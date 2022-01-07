
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int * v3d; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int V3D_BPOA ;
 int V3D_BPOS ;
 int V3D_WRITE (int ,int ) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int pm_runtime_disable (struct device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void vc4_v3d_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);

 pm_runtime_disable(dev);

 drm_irq_uninstall(drm);





 V3D_WRITE(V3D_BPOA, 0);
 V3D_WRITE(V3D_BPOS, 0);

 vc4->v3d = ((void*)0);
}
