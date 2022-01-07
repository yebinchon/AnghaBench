
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct TYPE_6__ {int backup_size; } ;
struct drm_vmw_size {scalar_t__ width; scalar_t__ height; } ;
struct vmw_surface {int flags; int scanout; int num_sizes; int multisample_count; TYPE_3__ res; scalar_t__* mip_levels; struct drm_vmw_size base_size; int format; int quality_level; int multisample_pattern; scalar_t__ array_size; int autogen_filter; int * offsets; int * sizes; } ;
struct TYPE_4__ {int shareable; int * tfile; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct vmw_user_surface {struct vmw_surface srf; TYPE_2__ prime; scalar_t__ size; } ;
struct vmw_private {scalar_t__ texture_max_width; scalar_t__ texture_max_height; scalar_t__ active_display_unit; scalar_t__ stdu_max_width; scalar_t__ stdu_max_height; int reservation_sem; int has_dx; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct svga3d_surface_desc {scalar_t__ block_desc; } ;
struct drm_device {int dummy; } ;
typedef int SVGA3dSurfaceFormat ;
typedef int SVGA3dSurfaceAllFlags ;
typedef int SVGA3dMSQualityLevel ;
typedef int SVGA3dMSPattern ;
typedef int SVGA3dDXSOState ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ SVGA3DBLOCKDESC_NONE ;
 int SVGA3D_MAX_SURFACE_FACES ;
 int SVGA3D_SURFACE_BIND_STREAM_OUTPUT ;
 int SVGA3D_SURFACE_CUBEMAP ;
 int SVGA3D_SURFACE_MULTISAMPLE ;
 int SVGA3D_SURFACE_SCREENTARGET ;
 int SVGA3D_TEX_FILTER_NONE ;
 int VMW_DEBUG_USER (char*,...) ;
 struct vmw_user_surface* kzalloc (int,int ) ;
 struct svga3d_surface_desc* svga3dsurface_get_desc (int ) ;
 int svga3dsurface_get_serialized_size_extended (int ,struct drm_vmw_size,scalar_t__,int,int) ;
 int svga3dsurface_is_screen_target_format (int ) ;
 int ttm_mem_global_alloc (int ,scalar_t__,struct ttm_operation_ctx*) ;
 int ttm_mem_global_free (int ,scalar_t__) ;
 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vmw_du_screen_target ;
 int vmw_mem_glob (struct vmw_private*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_surface_init (struct vmw_private*,struct vmw_surface*,int ) ;
 int vmw_user_surface_free ;

int vmw_surface_gb_priv_define(struct drm_device *dev,
          uint32_t user_accounting_size,
          SVGA3dSurfaceAllFlags svga3d_flags,
          SVGA3dSurfaceFormat format,
          bool for_scanout,
          uint32_t num_mip_levels,
          uint32_t multisample_count,
          uint32_t array_size,
          struct drm_vmw_size size,
          SVGA3dMSPattern multisample_pattern,
          SVGA3dMSQualityLevel quality_level,
          struct vmw_surface **srf_out)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 struct vmw_user_surface *user_srf;
 struct ttm_operation_ctx ctx = {
  .interruptible = 1,
  .no_wait_gpu = 0
 };
 struct vmw_surface *srf;
 int ret;
 u32 num_layers = 1;
 u32 sample_count = 1;

 *srf_out = ((void*)0);

 if (for_scanout) {
  if (!svga3dsurface_is_screen_target_format(format)) {
   VMW_DEBUG_USER("Invalid Screen Target surface format.");
   return -EINVAL;
  }

  if (size.width > dev_priv->texture_max_width ||
      size.height > dev_priv->texture_max_height) {
   VMW_DEBUG_USER("%ux%u\n, exceeds max surface size %ux%u",
           size.width, size.height,
           dev_priv->texture_max_width,
           dev_priv->texture_max_height);
   return -EINVAL;
  }
 } else {
  const struct svga3d_surface_desc *desc;

  desc = svga3dsurface_get_desc(format);
  if (unlikely(desc->block_desc == SVGA3DBLOCKDESC_NONE)) {
   VMW_DEBUG_USER("Invalid surface format.\n");
   return -EINVAL;
  }
 }


 if (array_size > 0 && !dev_priv->has_dx) {
  VMW_DEBUG_USER("Tried to create DX surface on non-DX host.\n");
  return -EINVAL;
 }

 ret = ttm_read_lock(&dev_priv->reservation_sem, 1);
 if (unlikely(ret != 0))
  return ret;

 ret = ttm_mem_global_alloc(vmw_mem_glob(dev_priv),
       user_accounting_size, &ctx);
 if (unlikely(ret != 0)) {
  if (ret != -ERESTARTSYS)
   DRM_ERROR("Out of graphics memory for surface"
      " creation.\n");
  goto out_unlock;
 }

 user_srf = kzalloc(sizeof(*user_srf), GFP_KERNEL);
 if (unlikely(!user_srf)) {
  ret = -ENOMEM;
  goto out_no_user_srf;
 }

 *srf_out = &user_srf->srf;
 user_srf->size = user_accounting_size;
 user_srf->prime.base.shareable = 0;
 user_srf->prime.base.tfile = ((void*)0);

 srf = &user_srf->srf;
 srf->flags = svga3d_flags;
 srf->format = format;
 srf->scanout = for_scanout;
 srf->mip_levels[0] = num_mip_levels;
 srf->num_sizes = 1;
 srf->sizes = ((void*)0);
 srf->offsets = ((void*)0);
 srf->base_size = size;
 srf->autogen_filter = SVGA3D_TEX_FILTER_NONE;
 srf->array_size = array_size;
 srf->multisample_count = multisample_count;
 srf->multisample_pattern = multisample_pattern;
 srf->quality_level = quality_level;

 if (array_size)
  num_layers = array_size;
 else if (svga3d_flags & SVGA3D_SURFACE_CUBEMAP)
  num_layers = SVGA3D_MAX_SURFACE_FACES;

 if (srf->flags & SVGA3D_SURFACE_MULTISAMPLE)
  sample_count = srf->multisample_count;

 srf->res.backup_size =
  svga3dsurface_get_serialized_size_extended(srf->format,
          srf->base_size,
          srf->mip_levels[0],
          num_layers,
          sample_count);

 if (srf->flags & SVGA3D_SURFACE_BIND_STREAM_OUTPUT)
  srf->res.backup_size += sizeof(SVGA3dDXSOState);
 if (dev_priv->active_display_unit == vmw_du_screen_target &&
     for_scanout && size.width <= dev_priv->stdu_max_width &&
     size.height <= dev_priv->stdu_max_height)
  srf->flags |= SVGA3D_SURFACE_SCREENTARGET;





 ret = vmw_surface_init(dev_priv, srf, vmw_user_surface_free);

 ttm_read_unlock(&dev_priv->reservation_sem);
 return ret;

out_no_user_srf:
 ttm_mem_global_free(vmw_mem_glob(dev_priv), user_accounting_size);

out_unlock:
 ttm_read_unlock(&dev_priv->reservation_sem);
 return ret;
}
