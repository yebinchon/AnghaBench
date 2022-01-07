
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; } ;
struct ltq_mm {TYPE_1__ mmchip; int shadow; } ;


 int LTQ_EBU_BUSCON ;
 int LTQ_EBU_BUSCON1 ;
 int LTQ_EBU_WP ;
 int __raw_writew (int ,int ) ;
 int ebu_lock ;
 int ltq_ebu_w32 (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ltq_mm_apply(struct ltq_mm *chip)
{
 unsigned long flags;

 spin_lock_irqsave(&ebu_lock, flags);
 ltq_ebu_w32(LTQ_EBU_BUSCON, LTQ_EBU_BUSCON1);
 __raw_writew(chip->shadow, chip->mmchip.regs);
 ltq_ebu_w32(LTQ_EBU_BUSCON | LTQ_EBU_WP, LTQ_EBU_BUSCON1);
 spin_unlock_irqrestore(&ebu_lock, flags);
}
