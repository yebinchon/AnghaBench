
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct i801_priv {int tco_pdev; int original_hstcfg; int adapter; } ;


 int SMBHSTCFG ;
 int i2c_del_adapter (int *) ;
 int i801_acpi_remove (struct i801_priv*) ;
 int i801_del_mux (struct i801_priv*) ;
 int i801_disable_host_notify (struct i801_priv*) ;
 struct i801_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int platform_device_unregister (int ) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_noresume (int *) ;

__attribute__((used)) static void i801_remove(struct pci_dev *dev)
{
 struct i801_priv *priv = pci_get_drvdata(dev);

 pm_runtime_forbid(&dev->dev);
 pm_runtime_get_noresume(&dev->dev);

 i801_disable_host_notify(priv);
 i801_del_mux(priv);
 i2c_del_adapter(&priv->adapter);
 i801_acpi_remove(priv);
 pci_write_config_byte(dev, SMBHSTCFG, priv->original_hstcfg);

 platform_device_unregister(priv->tco_pdev);





}
