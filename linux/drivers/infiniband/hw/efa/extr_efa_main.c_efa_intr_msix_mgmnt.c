
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_dev {int edev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int efa_com_admin_q_comp_intr_handler (int *) ;
 int efa_com_aenq_intr_handler (int *,void*) ;

__attribute__((used)) static irqreturn_t efa_intr_msix_mgmnt(int irq, void *data)
{
 struct efa_dev *dev = data;

 efa_com_admin_q_comp_intr_handler(&dev->edev);
 efa_com_aenq_intr_handler(&dev->edev, data);

 return IRQ_HANDLED;
}
