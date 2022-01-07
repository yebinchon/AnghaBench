
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int state; } ;
struct efa_com_dev {TYPE_1__ aq; scalar_t__ reg_bar; } ;


 int EFA_AQ_STATE_POLLING_BIT ;
 int EFA_REGS_ADMIN_INTR_MASK ;
 scalar_t__ EFA_REGS_INTR_MASK_OFF ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int writel (int ,scalar_t__) ;

void efa_com_set_admin_polling_mode(struct efa_com_dev *edev, bool polling)
{
 u32 mask_value = 0;

 if (polling)
  mask_value = EFA_REGS_ADMIN_INTR_MASK;

 writel(mask_value, edev->reg_bar + EFA_REGS_INTR_MASK_OFF);
 if (polling)
  set_bit(EFA_AQ_STATE_POLLING_BIT, &edev->aq.state);
 else
  clear_bit(EFA_AQ_STATE_POLLING_BIT, &edev->aq.state);
}
