
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hqvdp {int dev; struct drm_device* drm_dev; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int STI_HQVDP_0 ;
 struct sti_hqvdp* dev_get_drvdata (struct device*) ;
 struct drm_plane* sti_hqvdp_create (struct drm_device*,int ,int ) ;

__attribute__((used)) static int sti_hqvdp_bind(struct device *dev, struct device *master, void *data)
{
 struct sti_hqvdp *hqvdp = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;
 struct drm_plane *plane;

 DRM_DEBUG_DRIVER("\n");

 hqvdp->drm_dev = drm_dev;


 plane = sti_hqvdp_create(drm_dev, hqvdp->dev, STI_HQVDP_0);
 if (!plane)
  DRM_ERROR("Can't create HQVDP plane\n");

 return 0;
}
