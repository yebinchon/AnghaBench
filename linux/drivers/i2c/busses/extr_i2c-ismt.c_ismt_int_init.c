
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ismt_priv {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {int dev; int irq; } ;


 int IRQF_SHARED ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int devm_request_irq (int *,int ,int ,int ,char*,struct ismt_priv*) ;
 int ismt_do_interrupt ;
 int ismt_do_msi_interrupt ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_enable_msi (TYPE_1__*) ;

__attribute__((used)) static int ismt_int_init(struct ismt_priv *priv)
{
 int err;


 err = pci_enable_msi(priv->pci_dev);
 if (err)
  goto intx;

 err = devm_request_irq(&priv->pci_dev->dev,
          priv->pci_dev->irq,
          ismt_do_msi_interrupt,
          0,
          "ismt-msi",
          priv);
 if (err) {
  pci_disable_msi(priv->pci_dev);
  goto intx;
 }

 return 0;


intx:
 dev_warn(&priv->pci_dev->dev,
   "Unable to use MSI interrupts, falling back to legacy\n");

 err = devm_request_irq(&priv->pci_dev->dev,
          priv->pci_dev->irq,
          ismt_do_interrupt,
          IRQF_SHARED,
          "ismt-intx",
          priv);
 if (err) {
  dev_err(&priv->pci_dev->dev, "no usable interrupts\n");
  return err;
 }

 return 0;
}
