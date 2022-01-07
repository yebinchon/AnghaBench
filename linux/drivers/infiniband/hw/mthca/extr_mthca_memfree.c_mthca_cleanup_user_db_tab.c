
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_user_db_table {TYPE_2__* page; } ;
struct mthca_uar {int dummy; } ;
struct TYPE_3__ {int uarc_size; } ;
struct mthca_dev {int pdev; TYPE_1__ uar_table; } ;
struct TYPE_4__ {int mem; scalar_t__ uvirt; } ;


 int MTHCA_ICM_PAGE_SIZE ;
 int PCI_DMA_TODEVICE ;
 int kfree (struct mthca_user_db_table*) ;
 int mthca_UNMAP_ICM (struct mthca_dev*,int ,int) ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mthca_uarc_virt (struct mthca_dev*,struct mthca_uar*,int) ;
 int pci_unmap_sg (int ,int *,int,int ) ;
 int put_user_page (int ) ;
 int sg_page (int *) ;

void mthca_cleanup_user_db_tab(struct mthca_dev *dev, struct mthca_uar *uar,
          struct mthca_user_db_table *db_tab)
{
 int i;

 if (!mthca_is_memfree(dev))
  return;

 for (i = 0; i < dev->uar_table.uarc_size / MTHCA_ICM_PAGE_SIZE; ++i) {
  if (db_tab->page[i].uvirt) {
   mthca_UNMAP_ICM(dev, mthca_uarc_virt(dev, uar, i), 1);
   pci_unmap_sg(dev->pdev, &db_tab->page[i].mem, 1, PCI_DMA_TODEVICE);
   put_user_page(sg_page(&db_tab->page[i].mem));
  }
 }

 kfree(db_tab);
}
