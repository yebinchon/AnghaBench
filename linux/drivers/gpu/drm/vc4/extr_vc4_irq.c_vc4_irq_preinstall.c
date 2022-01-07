
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int overflow_mem_work; int job_wait_queue; int v3d; } ;
struct drm_device {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int V3D_DRIVER_IRQS ;
 int V3D_INTCTL ;
 int V3D_WRITE (int ,int ) ;
 int init_waitqueue_head (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_overflow_mem_work ;

void
vc4_irq_preinstall(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);

 if (!vc4->v3d)
  return;

 init_waitqueue_head(&vc4->job_wait_queue);
 INIT_WORK(&vc4->overflow_mem_work, vc4_overflow_mem_work);




 V3D_WRITE(V3D_INTCTL, V3D_DRIVER_IRQS);
}
