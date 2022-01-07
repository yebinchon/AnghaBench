
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int * resource; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_6__ {int name; int retries; TYPE_4__ dev; int * algo; int class; int owner; } ;
struct ismt_priv {TYPE_2__ adapter; int smba; struct pci_dev* pci_dev; } ;
struct TYPE_5__ {int name; } ;


 int ACPI_COMPANION (int *) ;
 int ACPI_COMPANION_SET (TYPE_4__*,int ) ;
 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int ISMT_MAX_RETRIES ;
 size_t SMBBAR ;
 int THIS_MODULE ;
 int acpi_check_resource_conflict (int *) ;
 int dev_dbg (int *,char*,unsigned long) ;
 int dev_err (int *,char*,...) ;
 struct ismt_priv* devm_kzalloc (int *,int,int ) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct ismt_priv*) ;
 int ismt_dev_init (struct ismt_priv*) ;
 TYPE_1__ ismt_driver ;
 int ismt_hw_init (struct ismt_priv*) ;
 int ismt_int_init (struct ismt_priv*) ;
 int pci_request_region (struct pci_dev*,size_t,int ) ;
 unsigned long pci_resource_len (struct pci_dev*,size_t) ;
 unsigned long pci_resource_start (struct pci_dev*,size_t) ;
 scalar_t__ pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct ismt_priv*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap (struct pci_dev*,size_t,unsigned long) ;
 int smbus_algorithm ;
 int snprintf (int ,int,char*,unsigned long) ;

__attribute__((used)) static int
ismt_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int err;
 struct ismt_priv *priv;
 unsigned long start, len;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 pci_set_drvdata(pdev, priv);

 i2c_set_adapdata(&priv->adapter, priv);
 priv->adapter.owner = THIS_MODULE;
 priv->adapter.class = I2C_CLASS_HWMON;
 priv->adapter.algo = &smbus_algorithm;
 priv->adapter.dev.parent = &pdev->dev;
 ACPI_COMPANION_SET(&priv->adapter.dev, ACPI_COMPANION(&pdev->dev));
 priv->adapter.retries = ISMT_MAX_RETRIES;

 priv->pci_dev = pdev;

 err = pcim_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to enable SMBus PCI device (%d)\n",
   err);
  return err;
 }


 pci_set_master(pdev);


 start = pci_resource_start(pdev, SMBBAR);
 len = pci_resource_len(pdev, SMBBAR);
 if (!start || !len) {
  dev_err(&pdev->dev,
   "SMBus base address uninitialized, upgrade BIOS\n");
  return -ENODEV;
 }

 snprintf(priv->adapter.name, sizeof(priv->adapter.name),
   "SMBus iSMT adapter at %lx", start);

 dev_dbg(&priv->pci_dev->dev, " start=0x%lX\n", start);
 dev_dbg(&priv->pci_dev->dev, " len=0x%lX\n", len);

 err = acpi_check_resource_conflict(&pdev->resource[SMBBAR]);
 if (err) {
  dev_err(&pdev->dev, "ACPI resource conflict!\n");
  return err;
 }

 err = pci_request_region(pdev, SMBBAR, ismt_driver.name);
 if (err) {
  dev_err(&pdev->dev,
   "Failed to request SMBus region 0x%lx-0x%lx\n",
   start, start + len);
  return err;
 }

 priv->smba = pcim_iomap(pdev, SMBBAR, len);
 if (!priv->smba) {
  dev_err(&pdev->dev, "Unable to ioremap SMBus BAR\n");
  return -ENODEV;
 }

 if ((pci_set_dma_mask(pdev, DMA_BIT_MASK(64)) != 0) ||
     (pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64)) != 0)) {
  if ((pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) != 0) ||
      (pci_set_consistent_dma_mask(pdev,
       DMA_BIT_MASK(32)) != 0)) {
   dev_err(&pdev->dev, "pci_set_dma_mask fail %p\n",
    pdev);
   return -ENODEV;
  }
 }

 err = ismt_dev_init(priv);
 if (err)
  return err;

 ismt_hw_init(priv);

 err = ismt_int_init(priv);
 if (err)
  return err;

 err = i2c_add_adapter(&priv->adapter);
 if (err)
  return -ENODEV;
 return 0;
}
