
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int v3d; } ;
struct drm_device {int dummy; } ;


 int V3D_INTENA ;
 int V3D_INT_FLDONE ;
 int V3D_INT_FRDONE ;
 int V3D_WRITE (int ,int) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

int
vc4_irq_postinstall(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 if (!vc4->v3d)
  return 0;




 V3D_WRITE(V3D_INTENA, V3D_INT_FLDONE | V3D_INT_FRDONE);

 return 0;
}
