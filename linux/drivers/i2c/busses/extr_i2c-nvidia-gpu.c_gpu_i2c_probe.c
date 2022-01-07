
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_6__ {TYPE_1__ dev; int * quirks; int * algo; int name; int owner; } ;
struct gpu_i2c_dev {TYPE_2__ adapter; int regs; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_IRQ_MSI ;
 int THIS_MODULE ;
 int dev_err (int *,char*,...) ;
 int dev_set_drvdata (int *,struct gpu_i2c_dev*) ;
 struct gpu_i2c_dev* devm_kzalloc (int *,int,int ) ;
 int gpu_enable_i2c_bus (struct gpu_i2c_dev*) ;
 int gpu_i2c_algorithm ;
 int gpu_i2c_quirks ;
 int gpu_populate_client (struct gpu_i2c_dev*,int ) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_del_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct gpu_i2c_dev*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;
 int pm_runtime_allow (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_use_autosuspend (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int gpu_i2c_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct gpu_i2c_dev *i2cd;
 int status;

 i2cd = devm_kzalloc(&pdev->dev, sizeof(*i2cd), GFP_KERNEL);
 if (!i2cd)
  return -ENOMEM;

 i2cd->dev = &pdev->dev;
 dev_set_drvdata(&pdev->dev, i2cd);

 status = pcim_enable_device(pdev);
 if (status < 0) {
  dev_err(&pdev->dev, "pcim_enable_device failed %d\n", status);
  return status;
 }

 pci_set_master(pdev);

 i2cd->regs = pcim_iomap(pdev, 0, 0);
 if (!i2cd->regs) {
  dev_err(&pdev->dev, "pcim_iomap failed\n");
  return -ENOMEM;
 }

 status = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_MSI);
 if (status < 0) {
  dev_err(&pdev->dev, "pci_alloc_irq_vectors err %d\n", status);
  return status;
 }

 gpu_enable_i2c_bus(i2cd);

 i2c_set_adapdata(&i2cd->adapter, i2cd);
 i2cd->adapter.owner = THIS_MODULE;
 strlcpy(i2cd->adapter.name, "NVIDIA GPU I2C adapter",
  sizeof(i2cd->adapter.name));
 i2cd->adapter.algo = &gpu_i2c_algorithm;
 i2cd->adapter.quirks = &gpu_i2c_quirks;
 i2cd->adapter.dev.parent = &pdev->dev;
 status = i2c_add_adapter(&i2cd->adapter);
 if (status < 0)
  goto free_irq_vectors;

 status = gpu_populate_client(i2cd, pdev->irq);
 if (status < 0) {
  dev_err(&pdev->dev, "gpu_populate_client failed %d\n", status);
  goto del_adapter;
 }

 pm_runtime_set_autosuspend_delay(&pdev->dev, 3000);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_put_autosuspend(&pdev->dev);
 pm_runtime_allow(&pdev->dev);

 return 0;

del_adapter:
 i2c_del_adapter(&i2cd->adapter);
free_irq_vectors:
 pci_free_irq_vectors(pdev);
 return status;
}
