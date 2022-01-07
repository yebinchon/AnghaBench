
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop {int irq_lock; int is_enabled; } ;
struct drm_crtc {int dummy; } ;


 int EPERM ;
 int FS_INTR ;
 int VOP_INTR_SET_TYPE (struct vop*,int ,int ,int) ;
 scalar_t__ WARN_ON (int) ;
 int clear ;
 int enable ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vop* to_vop (struct drm_crtc*) ;

__attribute__((used)) static int vop_crtc_enable_vblank(struct drm_crtc *crtc)
{
 struct vop *vop = to_vop(crtc);
 unsigned long flags;

 if (WARN_ON(!vop->is_enabled))
  return -EPERM;

 spin_lock_irqsave(&vop->irq_lock, flags);

 VOP_INTR_SET_TYPE(vop, clear, FS_INTR, 1);
 VOP_INTR_SET_TYPE(vop, enable, FS_INTR, 1);

 spin_unlock_irqrestore(&vop->irq_lock, flags);

 return 0;
}
