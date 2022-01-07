
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* eq; } ;
struct mthca_dev {int pdev; TYPE_1__ eq_table; } ;
struct TYPE_4__ {void* msi_x_vector; } ;


 size_t MTHCA_EQ_ASYNC ;
 size_t MTHCA_EQ_CMD ;
 size_t MTHCA_EQ_COMP ;
 int PCI_IRQ_MSIX ;
 int pci_alloc_irq_vectors (int ,int,int,int ) ;
 void* pci_irq_vector (int ,int) ;

__attribute__((used)) static int mthca_enable_msi_x(struct mthca_dev *mdev)
{
 int err;

 err = pci_alloc_irq_vectors(mdev->pdev, 3, 3, PCI_IRQ_MSIX);
 if (err < 0)
  return err;

 mdev->eq_table.eq[MTHCA_EQ_COMP ].msi_x_vector =
   pci_irq_vector(mdev->pdev, 0);
 mdev->eq_table.eq[MTHCA_EQ_ASYNC].msi_x_vector =
   pci_irq_vector(mdev->pdev, 1);
 mdev->eq_table.eq[MTHCA_EQ_CMD ].msi_x_vector =
   pci_irq_vector(mdev->pdev, 2);

 return 0;
}
