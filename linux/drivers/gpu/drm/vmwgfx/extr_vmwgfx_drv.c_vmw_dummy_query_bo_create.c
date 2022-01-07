
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_private {struct vmw_buffer_object* dummy_query_bo; } ;
struct vmw_buffer_object {int base; } ;
struct ttm_bo_kmap_obj {int dummy; } ;
struct TYPE_3__ {int totalSize; int result32; int state; } ;
typedef TYPE_1__ SVGA3dQueryResult ;


 int BUG_ON (int) ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SVGA3D_QUERYSTATE_PENDING ;
 struct vmw_buffer_object* kzalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int ttm_bo_kmap (int *,int ,int,struct ttm_bo_kmap_obj*) ;
 int ttm_bo_kunmap (struct ttm_bo_kmap_obj*) ;
 int ttm_bo_reserve (int *,int,int,int *) ;
 int ttm_bo_unreserve (int *) ;
 TYPE_1__* ttm_kmap_obj_virtual (struct ttm_bo_kmap_obj*,int*) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_bo_free ;
 int vmw_bo_init (struct vmw_private*,struct vmw_buffer_object*,int ,int *,int,int *) ;
 int vmw_bo_pin_reserved (struct vmw_buffer_object*,int) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 int vmw_sys_ne_placement ;

__attribute__((used)) static int vmw_dummy_query_bo_create(struct vmw_private *dev_priv)
{
 int ret;
 struct vmw_buffer_object *vbo;
 struct ttm_bo_kmap_obj map;
 volatile SVGA3dQueryResult *result;
 bool dummy;






 vbo = kzalloc(sizeof(*vbo), GFP_KERNEL);
 if (!vbo)
  return -ENOMEM;

 ret = vmw_bo_init(dev_priv, vbo, PAGE_SIZE,
     &vmw_sys_ne_placement, 0,
     &vmw_bo_bo_free);
 if (unlikely(ret != 0))
  return ret;

 ret = ttm_bo_reserve(&vbo->base, 0, 1, ((void*)0));
 BUG_ON(ret != 0);
 vmw_bo_pin_reserved(vbo, 1);

 ret = ttm_bo_kmap(&vbo->base, 0, 1, &map);
 if (likely(ret == 0)) {
  result = ttm_kmap_obj_virtual(&map, &dummy);
  result->totalSize = sizeof(*result);
  result->state = SVGA3D_QUERYSTATE_PENDING;
  result->result32 = 0xff;
  ttm_bo_kunmap(&map);
 }
 vmw_bo_pin_reserved(vbo, 0);
 ttm_bo_unreserve(&vbo->base);

 if (unlikely(ret != 0)) {
  DRM_ERROR("Dummy query buffer map failed.\n");
  vmw_bo_unreference(&vbo);
 } else
  dev_priv->dummy_query_bo = vbo;

 return ret;
}
