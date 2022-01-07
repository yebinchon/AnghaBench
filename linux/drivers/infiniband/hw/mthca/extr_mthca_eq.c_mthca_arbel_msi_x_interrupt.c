
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_eq {int eqn_mask; int cons_index; struct mthca_dev* dev; } ;
struct mthca_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int arbel_eq_req_not (struct mthca_dev*,int ) ;
 int arbel_set_eq_ci (struct mthca_dev*,struct mthca_eq*,int ) ;
 int mthca_eq_int (struct mthca_dev*,struct mthca_eq*) ;

__attribute__((used)) static irqreturn_t mthca_arbel_msi_x_interrupt(int irq, void *eq_ptr)
{
 struct mthca_eq *eq = eq_ptr;
 struct mthca_dev *dev = eq->dev;

 mthca_eq_int(dev, eq);
 arbel_set_eq_ci(dev, eq, eq->cons_index);
 arbel_eq_req_not(dev, eq->eqn_mask);


 return IRQ_HANDLED;
}
