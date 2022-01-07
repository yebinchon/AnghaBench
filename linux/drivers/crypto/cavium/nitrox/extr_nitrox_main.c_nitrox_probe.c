
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int revision; int device; int vendor; } ;
struct TYPE_4__ {int dropped; int completed; int posted; } ;
struct TYPE_3__ {int revision_id; int device_id; int vendor_id; } ;
struct nitrox_device {scalar_t__ node; int state; TYPE_2__ stats; int qlen; int nr_queues; int bar_addr; int timeout; TYPE_1__ hw; struct pci_dev* pdev; } ;


 int CMD_TIMEOUT ;
 int DMA_BIT_MASK (int) ;
 int DRIVER_VERSION ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_PF_QUEUES ;
 scalar_t__ NUMA_NO_NODE ;
 int __NDEV_NOT_READY ;
 int __NDEV_READY ;
 int atomic64_set (int *,int ) ;
 int atomic_set (int *,int ) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_info_once (int *,char*,int ,int ) ;
 scalar_t__ dev_to_node (int *) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int ioremap (int ,int ) ;
 int kfree (struct nitrox_device*) ;
 struct nitrox_device* kzalloc (int,int ) ;
 int min_t (int ,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int nitrox_add_to_devlist (struct nitrox_device*) ;
 int nitrox_crypto_register () ;
 int nitrox_debugfs_exit (struct nitrox_device*) ;
 int nitrox_debugfs_init (struct nitrox_device*) ;
 int nitrox_device_flr (struct pci_dev*) ;
 int nitrox_driver_name ;
 int nitrox_pf_hw_init (struct nitrox_device*) ;
 int nitrox_pf_sw_cleanup (struct nitrox_device*) ;
 int nitrox_pf_sw_init (struct nitrox_device*) ;
 int nitrox_remove_from_devlist (struct nitrox_device*) ;
 int num_online_cpus () ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pci_request_mem_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct nitrox_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int qlen ;
 int smp_mb__after_atomic () ;
 int u32 ;

__attribute__((used)) static int nitrox_probe(struct pci_dev *pdev,
   const struct pci_device_id *id)
{
 struct nitrox_device *ndev;
 int err;

 dev_info_once(&pdev->dev, "%s driver version %s\n",
        nitrox_driver_name, DRIVER_VERSION);

 err = pci_enable_device_mem(pdev);
 if (err)
  return err;


 err = nitrox_device_flr(pdev);
 if (err) {
  dev_err(&pdev->dev, "FLR failed\n");
  pci_disable_device(pdev);
  return err;
 }

 if (!dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64))) {
  dev_dbg(&pdev->dev, "DMA to 64-BIT address\n");
 } else {
  err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev, "DMA configuration failed\n");
   pci_disable_device(pdev);
   return err;
  }
 }

 err = pci_request_mem_regions(pdev, nitrox_driver_name);
 if (err) {
  pci_disable_device(pdev);
  return err;
 }
 pci_set_master(pdev);

 ndev = kzalloc(sizeof(*ndev), GFP_KERNEL);
 if (!ndev) {
  err = -ENOMEM;
  goto ndev_fail;
 }

 pci_set_drvdata(pdev, ndev);
 ndev->pdev = pdev;


 nitrox_add_to_devlist(ndev);

 ndev->hw.vendor_id = pdev->vendor;
 ndev->hw.device_id = pdev->device;
 ndev->hw.revision_id = pdev->revision;

 ndev->timeout = msecs_to_jiffies(CMD_TIMEOUT);
 ndev->node = dev_to_node(&pdev->dev);
 if (ndev->node == NUMA_NO_NODE)
  ndev->node = 0;

 ndev->bar_addr = ioremap(pci_resource_start(pdev, 0),
     pci_resource_len(pdev, 0));
 if (!ndev->bar_addr) {
  err = -EIO;
  goto ioremap_err;
 }

 ndev->nr_queues = min_t(u32, MAX_PF_QUEUES, num_online_cpus());
 ndev->qlen = qlen;

 err = nitrox_pf_sw_init(ndev);
 if (err)
  goto ioremap_err;

 err = nitrox_pf_hw_init(ndev);
 if (err)
  goto pf_hw_fail;

 nitrox_debugfs_init(ndev);


 atomic64_set(&ndev->stats.posted, 0);
 atomic64_set(&ndev->stats.completed, 0);
 atomic64_set(&ndev->stats.dropped, 0);

 atomic_set(&ndev->state, __NDEV_READY);

 smp_mb__after_atomic();

 err = nitrox_crypto_register();
 if (err)
  goto crypto_fail;

 return 0;

crypto_fail:
 nitrox_debugfs_exit(ndev);
 atomic_set(&ndev->state, __NDEV_NOT_READY);

 smp_mb__after_atomic();
pf_hw_fail:
 nitrox_pf_sw_cleanup(ndev);
ioremap_err:
 nitrox_remove_from_devlist(ndev);
 kfree(ndev);
 pci_set_drvdata(pdev, ((void*)0));
ndev_fail:
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
 return err;
}
