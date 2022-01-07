
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int bus; } ;
struct pci_dev {int dummy; } ;


 int mcb_release_bus (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct priv* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void mcb_pci_remove(struct pci_dev *pdev)
{
 struct priv *priv = pci_get_drvdata(pdev);

 mcb_release_bus(priv->bus);

 pci_disable_device(pdev);
}
