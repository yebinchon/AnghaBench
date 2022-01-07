
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct vc4_rcl_setup {int dummy; } ;
struct vc4_exec_info {TYPE_1__* args; int rcl_write_bo_count; struct drm_gem_cma_object** rcl_write_bo; } ;
struct drm_vc4_submit_rcl_surface {int bits; scalar_t__ flags; int offset; int hindex; } ;
struct drm_gem_cma_object {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;


 int DRM_DEBUG (char*,...) ;
 int EINVAL ;
 scalar_t__ VC4_GET_FIELD (int,int ) ;
 int VC4_RENDER_CONFIG_DECIMATE_MODE_4X ;
 int VC4_RENDER_CONFIG_FORMAT ;


 int VC4_RENDER_CONFIG_FORMAT_MASK ;

 int VC4_RENDER_CONFIG_MEMORY_FORMAT ;
 int VC4_RENDER_CONFIG_MEMORY_FORMAT_MASK ;
 int VC4_RENDER_CONFIG_MS_MODE_4X ;
 scalar_t__ VC4_TILING_FORMAT_LT ;
 int vc4_check_tex_size (struct vc4_exec_info*,struct drm_gem_cma_object*,int ,scalar_t__,int ,int ,int) ;
 struct drm_gem_cma_object* vc4_use_bo (struct vc4_exec_info*,int ) ;

__attribute__((used)) static int
vc4_rcl_render_config_surface_setup(struct vc4_exec_info *exec,
        struct vc4_rcl_setup *setup,
        struct drm_gem_cma_object **obj,
        struct drm_vc4_submit_rcl_surface *surf)
{
 uint8_t tiling = VC4_GET_FIELD(surf->bits,
           VC4_RENDER_CONFIG_MEMORY_FORMAT);
 uint8_t format = VC4_GET_FIELD(surf->bits,
           VC4_RENDER_CONFIG_FORMAT);
 int cpp;

 if (surf->flags != 0) {
  DRM_DEBUG("No flags supported on render config.\n");
  return -EINVAL;
 }

 if (surf->bits & ~(VC4_RENDER_CONFIG_MEMORY_FORMAT_MASK |
      VC4_RENDER_CONFIG_FORMAT_MASK |
      VC4_RENDER_CONFIG_MS_MODE_4X |
      VC4_RENDER_CONFIG_DECIMATE_MODE_4X)) {
  DRM_DEBUG("Unknown bits in render config: 0x%04x\n",
     surf->bits);
  return -EINVAL;
 }

 if (surf->hindex == ~0)
  return 0;

 *obj = vc4_use_bo(exec, surf->hindex);
 if (!*obj)
  return -EINVAL;

 exec->rcl_write_bo[exec->rcl_write_bo_count++] = *obj;

 if (tiling > VC4_TILING_FORMAT_LT) {
  DRM_DEBUG("Bad tiling format\n");
  return -EINVAL;
 }

 switch (format) {
 case 129:
 case 130:
  cpp = 2;
  break;
 case 128:
  cpp = 4;
  break;
 default:
  DRM_DEBUG("Bad tile buffer format\n");
  return -EINVAL;
 }

 if (!vc4_check_tex_size(exec, *obj, surf->offset, tiling,
    exec->args->width, exec->args->height, cpp)) {
  return -EINVAL;
 }

 return 0;
}
