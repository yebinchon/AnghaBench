
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {size_t backup_size; int id; struct vmw_buffer_object* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct vmw_cotable {size_t size_read_back; int type; } ;
struct ttm_buffer_object {size_t num_pages; } ;
struct vmw_buffer_object {struct ttm_buffer_object base; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct ttm_bo_kmap_obj {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int WARN_ON_ONCE (int ) ;
 struct vmw_buffer_object* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int ttm_bo_kmap (struct ttm_buffer_object*,size_t,int,struct ttm_bo_kmap_obj*) ;
 int ttm_bo_kunmap (struct ttm_bo_kmap_obj*) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_validate (struct ttm_buffer_object*,int *,struct ttm_operation_ctx*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int) ;
 int ttm_kmap_obj_virtual (struct ttm_bo_kmap_obj*,int*) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_bo_free ;
 int vmw_bo_init (struct vmw_private*,struct vmw_buffer_object*,size_t,int *,int,int ) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 struct vmw_cotable* vmw_cotable (struct vmw_resource*) ;
 int vmw_cotable_readback (struct vmw_resource*) ;
 int vmw_cotable_unscrub (struct vmw_resource*) ;
 int vmw_mob_ne_placement ;
 int vmw_mob_placement ;
 int vmw_resource_mob_attach (struct vmw_resource*) ;
 int vmw_resource_mob_detach (struct vmw_resource*) ;

__attribute__((used)) static int vmw_cotable_resize(struct vmw_resource *res, size_t new_size)
{
 struct ttm_operation_ctx ctx = { 0, 0 };
 struct vmw_private *dev_priv = res->dev_priv;
 struct vmw_cotable *vcotbl = vmw_cotable(res);
 struct vmw_buffer_object *buf, *old_buf = res->backup;
 struct ttm_buffer_object *bo, *old_bo = &res->backup->base;
 size_t old_size = res->backup_size;
 size_t old_size_read_back = vcotbl->size_read_back;
 size_t cur_size_read_back;
 struct ttm_bo_kmap_obj old_map, new_map;
 int ret;
 size_t i;

 ret = vmw_cotable_readback(res);
 if (ret)
  return ret;

 cur_size_read_back = vcotbl->size_read_back;
 vcotbl->size_read_back = old_size_read_back;






 buf = kzalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = vmw_bo_init(dev_priv, buf, new_size, &vmw_mob_ne_placement,
     1, vmw_bo_bo_free);
 if (ret) {
  DRM_ERROR("Failed initializing new cotable MOB.\n");
  return ret;
 }

 bo = &buf->base;
 WARN_ON_ONCE(ttm_bo_reserve(bo, 0, 1, ((void*)0)));

 ret = ttm_bo_wait(old_bo, 0, 0);
 if (unlikely(ret != 0)) {
  DRM_ERROR("Failed waiting for cotable unbind.\n");
  goto out_wait;
 }





 for (i = 0; i < old_bo->num_pages; ++i) {
  bool dummy;

  ret = ttm_bo_kmap(old_bo, i, 1, &old_map);
  if (unlikely(ret != 0)) {
   DRM_ERROR("Failed mapping old COTable on resize.\n");
   goto out_wait;
  }
  ret = ttm_bo_kmap(bo, i, 1, &new_map);
  if (unlikely(ret != 0)) {
   DRM_ERROR("Failed mapping new COTable on resize.\n");
   goto out_map_new;
  }
  memcpy(ttm_kmap_obj_virtual(&new_map, &dummy),
         ttm_kmap_obj_virtual(&old_map, &dummy),
         PAGE_SIZE);
  ttm_bo_kunmap(&new_map);
  ttm_bo_kunmap(&old_map);
 }


 ret = ttm_bo_validate(bo, &vmw_mob_placement, &ctx);
 if (unlikely(ret != 0)) {
  DRM_ERROR("Failed validating new COTable backup buffer.\n");
  goto out_wait;
 }

 vmw_resource_mob_detach(res);
 res->backup = buf;
 res->backup_size = new_size;
 vcotbl->size_read_back = cur_size_read_back;





 ret = vmw_cotable_unscrub(res);
 if (ret) {
  DRM_ERROR("Failed switching COTable backup buffer.\n");
  res->backup = old_buf;
  res->backup_size = old_size;
  vcotbl->size_read_back = old_size_read_back;
  vmw_resource_mob_attach(res);
  goto out_wait;
 }

 vmw_resource_mob_attach(res);

 vmw_bo_unreference(&old_buf);
 res->id = vcotbl->type;

 return 0;

out_map_new:
 ttm_bo_kunmap(&old_map);
out_wait:
 ttm_bo_unreserve(bo);
 vmw_bo_unreference(&buf);

 return ret;
}
