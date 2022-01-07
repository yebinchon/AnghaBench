
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; scalar_t__ flags; int poll_sem; int hcr_mutex; } ;
struct mthca_dev {int hcr; TYPE_1__ cmd; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 scalar_t__ MTHCA_HCR_BASE ;
 int MTHCA_HCR_SIZE ;
 int MTHCA_MAILBOX_SIZE ;
 int dma_pool_create (char*,int *,int ,int ,int ) ;
 int ioremap (scalar_t__,int ) ;
 int iounmap (int ) ;
 int mthca_err (struct mthca_dev*,char*) ;
 int mutex_init (int *) ;
 scalar_t__ pci_resource_start (TYPE_2__*,int ) ;
 int sema_init (int *,int) ;

int mthca_cmd_init(struct mthca_dev *dev)
{
 mutex_init(&dev->cmd.hcr_mutex);
 sema_init(&dev->cmd.poll_sem, 1);
 dev->cmd.flags = 0;

 dev->hcr = ioremap(pci_resource_start(dev->pdev, 0) + MTHCA_HCR_BASE,
      MTHCA_HCR_SIZE);
 if (!dev->hcr) {
  mthca_err(dev, "Couldn't map command register.");
  return -ENOMEM;
 }

 dev->cmd.pool = dma_pool_create("mthca_cmd", &dev->pdev->dev,
     MTHCA_MAILBOX_SIZE,
     MTHCA_MAILBOX_SIZE, 0);
 if (!dev->cmd.pool) {
  iounmap(dev->hcr);
  return -ENOMEM;
 }

 return 0;
}
