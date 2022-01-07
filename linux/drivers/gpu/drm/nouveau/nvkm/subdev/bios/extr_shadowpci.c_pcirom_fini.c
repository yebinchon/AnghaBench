
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int pdev; int rom; } ;


 int kfree (struct priv*) ;
 int pci_disable_rom (int ) ;
 int pci_unmap_rom (int ,int ) ;

__attribute__((used)) static void
pcirom_fini(void *data)
{
 struct priv *priv = data;
 pci_unmap_rom(priv->pdev, priv->rom);
 pci_disable_rom(priv->pdev);
 kfree(priv);
}
