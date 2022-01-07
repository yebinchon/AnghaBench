
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct i801_priv {int original_hstcfg; } ;


 int SMBHSTCFG ;
 int i801_disable_host_notify (struct i801_priv*) ;
 struct i801_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void i801_shutdown(struct pci_dev *dev)
{
 struct i801_priv *priv = pci_get_drvdata(dev);


 i801_disable_host_notify(priv);
 pci_write_config_byte(dev, SMBHSTCFG, priv->original_hstcfg);
}
