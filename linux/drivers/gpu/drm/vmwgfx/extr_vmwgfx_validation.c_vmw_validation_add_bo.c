
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_validation_context {int bo_list; scalar_t__ ht; } ;
struct ttm_validate_buffer {int head; scalar_t__ num_shared; int bo; } ;
struct TYPE_2__ {unsigned long key; } ;
struct vmw_validation_bo_node {int as_mob; int cpu_blit; struct ttm_validate_buffer base; TYPE_1__ hash; } ;
struct vmw_buffer_object {int base; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int drm_ht_insert_item (scalar_t__,TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int ttm_bo_get_unless_zero (int *) ;
 struct vmw_validation_bo_node* vmw_validation_find_bo_dup (struct vmw_validation_context*,struct vmw_buffer_object*) ;
 struct vmw_validation_bo_node* vmw_validation_mem_alloc (struct vmw_validation_context*,int) ;

int vmw_validation_add_bo(struct vmw_validation_context *ctx,
     struct vmw_buffer_object *vbo,
     bool as_mob,
     bool cpu_blit)
{
 struct vmw_validation_bo_node *bo_node;

 bo_node = vmw_validation_find_bo_dup(ctx, vbo);
 if (bo_node) {
  if (bo_node->as_mob != as_mob ||
      bo_node->cpu_blit != cpu_blit) {
   DRM_ERROR("Inconsistent buffer usage.\n");
   return -EINVAL;
  }
 } else {
  struct ttm_validate_buffer *val_buf;
  int ret;

  bo_node = vmw_validation_mem_alloc(ctx, sizeof(*bo_node));
  if (!bo_node)
   return -ENOMEM;

  if (ctx->ht) {
   bo_node->hash.key = (unsigned long) vbo;
   ret = drm_ht_insert_item(ctx->ht, &bo_node->hash);
   if (ret) {
    DRM_ERROR("Failed to initialize a buffer "
       "validation entry.\n");
    return ret;
   }
  }
  val_buf = &bo_node->base;
  val_buf->bo = ttm_bo_get_unless_zero(&vbo->base);
  if (!val_buf->bo)
   return -ESRCH;
  val_buf->num_shared = 0;
  list_add_tail(&val_buf->head, &ctx->bo_list);
  bo_node->as_mob = as_mob;
  bo_node->cpu_blit = cpu_blit;
 }

 return 0;
}
