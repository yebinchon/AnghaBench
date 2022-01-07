
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;
struct v3d_dev {struct drm_device drm; } ;


 int DRM_DEV_ERROR (int ,char*,...) ;
 int V3D_CORE_READ (int ,int ) ;
 int V3D_ERR_STAT ;
 int trace_v3d_reset_begin (struct drm_device*) ;
 int trace_v3d_reset_end (struct drm_device*) ;
 int v3d_idle_axi (struct v3d_dev*,int ) ;
 int v3d_idle_gca (struct v3d_dev*) ;
 int v3d_irq_reset (struct v3d_dev*) ;
 int v3d_mmu_set_page_table (struct v3d_dev*) ;
 int v3d_reset_v3d (struct v3d_dev*) ;

void
v3d_reset(struct v3d_dev *v3d)
{
 struct drm_device *dev = &v3d->drm;

 DRM_DEV_ERROR(dev->dev, "Resetting GPU for hang.\n");
 DRM_DEV_ERROR(dev->dev, "V3D_ERR_STAT: 0x%08x\n",
        V3D_CORE_READ(0, V3D_ERR_STAT));
 trace_v3d_reset_begin(dev);


 if (0)
  v3d_idle_axi(v3d, 0);

 v3d_idle_gca(v3d);
 v3d_reset_v3d(v3d);

 v3d_mmu_set_page_table(v3d);
 v3d_irq_reset(v3d);

 trace_v3d_reset_end(dev);
}
