
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vop {int irq_lock; } ;


 int LINE_FLAG_INTR ;
 int VOP_INTR_GET_TYPE (struct vop*,int ,int ) ;
 int enable ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool vop_line_flag_irq_is_enabled(struct vop *vop)
{
 uint32_t line_flag_irq;
 unsigned long flags;

 spin_lock_irqsave(&vop->irq_lock, flags);

 line_flag_irq = VOP_INTR_GET_TYPE(vop, enable, LINE_FLAG_INTR);

 spin_unlock_irqrestore(&vop->irq_lock, flags);

 return !!line_flag_irq;
}
