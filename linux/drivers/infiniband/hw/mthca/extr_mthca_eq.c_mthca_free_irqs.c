
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct mthca_dev* eq; scalar_t__ have_irq; } ;
struct mthca_dev {scalar_t__ have_irq; TYPE_1__ eq_table; int msi_x_vector; TYPE_2__* pdev; } ;
struct TYPE_4__ {int irq; } ;


 int MTHCA_NUM_EQ ;
 int free_irq (int ,struct mthca_dev*) ;

__attribute__((used)) static void mthca_free_irqs(struct mthca_dev *dev)
{
 int i;

 if (dev->eq_table.have_irq)
  free_irq(dev->pdev->irq, dev);
 for (i = 0; i < MTHCA_NUM_EQ; ++i)
  if (dev->eq_table.eq[i].have_irq) {
   free_irq(dev->eq_table.eq[i].msi_x_vector,
     dev->eq_table.eq + i);
   dev->eq_table.eq[i].have_irq = 0;
  }
}
