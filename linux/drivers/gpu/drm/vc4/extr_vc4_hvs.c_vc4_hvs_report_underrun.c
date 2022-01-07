
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int underrun; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int atomic_inc (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void vc4_hvs_report_underrun(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 atomic_inc(&vc4->underrun);
 DRM_DEV_ERROR(dev->dev, "HVS underrun\n");
}
