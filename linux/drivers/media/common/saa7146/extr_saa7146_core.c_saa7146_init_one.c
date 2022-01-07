
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct saa7146_pci_extension_data {struct saa7146_extension* ext; } ;
struct saa7146_extension {scalar_t__ (* attach ) (struct saa7146_dev*,struct saa7146_pci_extension_data*) ;scalar_t__ (* probe ) (struct saa7146_dev*) ;} ;
struct TYPE_6__ {int dma_handle; void* cpu_addr; } ;
struct TYPE_5__ {int dma_handle; void* cpu_addr; } ;
struct TYPE_4__ {int dma_handle; void* cpu_addr; } ;
struct saa7146_dev {int mem; TYPE_3__ d_rps0; TYPE_2__ d_rps1; TYPE_1__ d_i2c; int v4l2_dev; int i2c_wq; int module; int i2c_lock; int slock; int int_slock; int v4l2_lock; struct saa7146_extension* ext; int revision; int name; struct pci_dev* pci; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int irq; int subsystem_device; int subsystem_vendor; int revision; } ;


 int DEB_D (char*,struct saa7146_dev*) ;
 int DEB_EE (char*,struct pci_dev*) ;
 int ENODEV ;
 int ENOMEM ;
 int ERR (char*) ;
 int GFP_KERNEL ;
 int IER ;
 int IRQF_SHARED ;
 int MC1 ;
 int MC2 ;
 int PCI_BT_V1 ;
 int SAA7146_RPS_MEM ;
 int THIS_MODULE ;
 int free_irq (int ,void*) ;
 int init_waitqueue_head (int *) ;
 int interrupt_hw ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct saa7146_dev*) ;
 struct saa7146_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int ,void*,int ) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int pci_request_region (struct pci_dev*,int ,char*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int pci_set_master (struct pci_dev*) ;
 void* pci_zalloc_consistent (struct pci_dev*,int ,int *) ;
 int pr_info (char*,int ,int ,int ,int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct saa7146_dev*) ;
 int saa7146_num ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;
 scalar_t__ stub1 (struct saa7146_dev*) ;
 scalar_t__ stub2 (struct saa7146_dev*,struct saa7146_pci_extension_data*) ;

__attribute__((used)) static int saa7146_init_one(struct pci_dev *pci, const struct pci_device_id *ent)
{
 struct saa7146_pci_extension_data *pci_ext = (struct saa7146_pci_extension_data *)ent->driver_data;
 struct saa7146_extension *ext = pci_ext->ext;
 struct saa7146_dev *dev;
 int err = -ENOMEM;


 dev = kzalloc(sizeof(struct saa7146_dev), GFP_KERNEL);
 if (!dev) {
  ERR("out of memory\n");
  goto out;
 }


 sprintf(dev->name, "saa7146 (%d)", saa7146_num);

 DEB_EE("pci:%p\n", pci);

 err = pci_enable_device(pci);
 if (err < 0) {
  ERR("pci_enable_device() failed\n");
  goto err_free;
 }


 pci_set_master(pci);

 dev->pci = pci;


 dev->revision = pci->revision;



 err = pci_request_region(pci, 0, "saa7146");
 if (err < 0)
  goto err_disable;

 dev->mem = ioremap(pci_resource_start(pci, 0),
      pci_resource_len(pci, 0));
 if (!dev->mem) {
  ERR("ioremap() failed\n");
  err = -ENODEV;
  goto err_release;
 }
 saa7146_write(dev, IER, 0);


 saa7146_write(dev, MC1, 0x30ff0000);


 saa7146_write(dev, MC2, 0xf8000000);


 err = request_irq(pci->irq, interrupt_hw, IRQF_SHARED,
     dev->name, dev);
 if (err < 0) {
  ERR("request_irq() failed\n");
  goto err_unmap;
 }

 err = -ENOMEM;


 dev->d_rps0.cpu_addr = pci_zalloc_consistent(pci, SAA7146_RPS_MEM,
           &dev->d_rps0.dma_handle);
 if (!dev->d_rps0.cpu_addr)
  goto err_free_irq;

 dev->d_rps1.cpu_addr = pci_zalloc_consistent(pci, SAA7146_RPS_MEM,
           &dev->d_rps1.dma_handle);
 if (!dev->d_rps1.cpu_addr)
  goto err_free_rps0;

 dev->d_i2c.cpu_addr = pci_zalloc_consistent(pci, SAA7146_RPS_MEM,
          &dev->d_i2c.dma_handle);
 if (!dev->d_i2c.cpu_addr)
  goto err_free_rps1;



 pr_info("found saa7146 @ mem %p (revision %d, irq %d) (0x%04x,0x%04x)\n",
  dev->mem, dev->revision, pci->irq,
  pci->subsystem_vendor, pci->subsystem_device);
 dev->ext = ext;

 mutex_init(&dev->v4l2_lock);
 spin_lock_init(&dev->int_slock);
 spin_lock_init(&dev->slock);

 mutex_init(&dev->i2c_lock);

 dev->module = THIS_MODULE;
 init_waitqueue_head(&dev->i2c_wq);


 saa7146_write(dev, PCI_BT_V1, 0x1c00101f);



 err = -ENODEV;

 if (ext->probe && ext->probe(dev)) {
  DEB_D("ext->probe() failed for %p. skipping device.\n", dev);
  goto err_free_i2c;
 }

 if (ext->attach(dev, pci_ext)) {
  DEB_D("ext->attach() failed for %p. skipping device.\n", dev);
  goto err_free_i2c;
 }



 pci_set_drvdata(pci, &dev->v4l2_dev);

 saa7146_num++;

 err = 0;
out:
 return err;

err_free_i2c:
 pci_free_consistent(pci, SAA7146_RPS_MEM, dev->d_i2c.cpu_addr,
       dev->d_i2c.dma_handle);
err_free_rps1:
 pci_free_consistent(pci, SAA7146_RPS_MEM, dev->d_rps1.cpu_addr,
       dev->d_rps1.dma_handle);
err_free_rps0:
 pci_free_consistent(pci, SAA7146_RPS_MEM, dev->d_rps0.cpu_addr,
       dev->d_rps0.dma_handle);
err_free_irq:
 free_irq(pci->irq, (void *)dev);
err_unmap:
 iounmap(dev->mem);
err_release:
 pci_release_region(pci, 0);
err_disable:
 pci_disable_device(pci);
err_free:
 kfree(dev);
 goto out;
}
