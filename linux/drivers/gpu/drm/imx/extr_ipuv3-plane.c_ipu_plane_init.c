
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ipu_soc {int dummy; } ;
struct ipu_plane {int dma; int dp_flow; int base; struct ipu_soc* ipu; } ;
struct drm_device {int dummy; } ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEBUG_KMS (char*,int,int,unsigned int) ;
 int DRM_ERROR (char*) ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 struct ipu_plane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IPU_DP_FLOW_SYNC_BG ;
 int IPU_DP_FLOW_SYNC_FG ;
 int drm_plane_create_zpos_immutable_property (int *,int ) ;
 int drm_plane_create_zpos_property (int *,unsigned int,int ,int) ;
 int drm_plane_helper_add (int *,int *) ;
 int drm_universal_plane_init (struct drm_device*,int *,unsigned int,int *,int ,int ,int const*,int,int *) ;
 int * ipu_format_modifiers ;
 int ipu_plane_formats ;
 int ipu_plane_funcs ;
 int ipu_plane_helper_funcs ;
 scalar_t__ ipu_prg_present (struct ipu_soc*) ;
 int kfree (struct ipu_plane*) ;
 struct ipu_plane* kzalloc (int,int ) ;
 int * pre_format_modifiers ;

struct ipu_plane *ipu_plane_init(struct drm_device *dev, struct ipu_soc *ipu,
     int dma, int dp, unsigned int possible_crtcs,
     enum drm_plane_type type)
{
 struct ipu_plane *ipu_plane;
 const uint64_t *modifiers = ipu_format_modifiers;
 unsigned int zpos = (type == DRM_PLANE_TYPE_PRIMARY) ? 0 : 1;
 int ret;

 DRM_DEBUG_KMS("channel %d, dp flow %d, possible_crtcs=0x%x\n",
        dma, dp, possible_crtcs);

 ipu_plane = kzalloc(sizeof(*ipu_plane), GFP_KERNEL);
 if (!ipu_plane) {
  DRM_ERROR("failed to allocate plane\n");
  return ERR_PTR(-ENOMEM);
 }

 ipu_plane->ipu = ipu;
 ipu_plane->dma = dma;
 ipu_plane->dp_flow = dp;

 if (ipu_prg_present(ipu))
  modifiers = pre_format_modifiers;

 ret = drm_universal_plane_init(dev, &ipu_plane->base, possible_crtcs,
           &ipu_plane_funcs, ipu_plane_formats,
           ARRAY_SIZE(ipu_plane_formats),
           modifiers, type, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to initialize plane\n");
  kfree(ipu_plane);
  return ERR_PTR(ret);
 }

 drm_plane_helper_add(&ipu_plane->base, &ipu_plane_helper_funcs);

 if (dp == IPU_DP_FLOW_SYNC_BG || dp == IPU_DP_FLOW_SYNC_FG)
  drm_plane_create_zpos_property(&ipu_plane->base, zpos, 0, 1);
 else
  drm_plane_create_zpos_immutable_property(&ipu_plane->base, 0);

 return ipu_plane;
}
