
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int dummy; } ;
struct TYPE_2__ {int desc; struct drm_plane drm_plane; int status; } ;
struct sti_hqvdp {TYPE_1__ plane; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_ERROR (char*) ;
 int DRM_PLANE_TYPE_OVERLAY ;
 int STI_PLANE_DISABLED ;
 struct sti_hqvdp* dev_get_drvdata (struct device*) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int,int *,int ,int ,int *,int ,int *) ;
 int hqvdp_supported_formats ;
 int sti_hqvdp_helpers_funcs ;
 int sti_hqvdp_init (struct sti_hqvdp*) ;
 int sti_hqvdp_plane_helpers_funcs ;
 int sti_plane_init_property (TYPE_1__*,int ) ;

__attribute__((used)) static struct drm_plane *sti_hqvdp_create(struct drm_device *drm_dev,
       struct device *dev, int desc)
{
 struct sti_hqvdp *hqvdp = dev_get_drvdata(dev);
 int res;

 hqvdp->plane.desc = desc;
 hqvdp->plane.status = STI_PLANE_DISABLED;

 sti_hqvdp_init(hqvdp);

 res = drm_universal_plane_init(drm_dev, &hqvdp->plane.drm_plane, 1,
           &sti_hqvdp_plane_helpers_funcs,
           hqvdp_supported_formats,
           ARRAY_SIZE(hqvdp_supported_formats),
           ((void*)0), DRM_PLANE_TYPE_OVERLAY, ((void*)0));
 if (res) {
  DRM_ERROR("Failed to initialize universal plane\n");
  return ((void*)0);
 }

 drm_plane_helper_add(&hqvdp->plane.drm_plane, &sti_hqvdp_helpers_funcs);

 sti_plane_init_property(&hqvdp->plane, DRM_PLANE_TYPE_OVERLAY);

 return &hqvdp->plane.drm_plane;
}
