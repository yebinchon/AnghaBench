
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int irq; int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int readx_poll_timeout_atomic (int ,struct vop*,int,int,int ,int) ;
 int synchronize_irq (int ) ;
 int vop_fs_irq_is_pending ;

__attribute__((used)) static void vop_wait_for_irq_handler(struct vop *vop)
{
 bool pending;
 int ret;
 ret = readx_poll_timeout_atomic(vop_fs_irq_is_pending, vop, pending,
     !pending, 0, 10 * 1000);
 if (ret)
  DRM_DEV_ERROR(vop->dev, "VOP vblank IRQ stuck for 10 ms\n");

 synchronize_irq(vop->irq);
}
