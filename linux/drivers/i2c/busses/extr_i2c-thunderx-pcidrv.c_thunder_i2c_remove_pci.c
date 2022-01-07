
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct octeon_i2c {int adap; int clk; } ;


 int i2c_del_adapter (int *) ;
 struct octeon_i2c* pci_get_drvdata (struct pci_dev*) ;
 int thunder_i2c_clock_disable (int *,int ) ;
 int thunder_i2c_smbus_remove (struct octeon_i2c*) ;

__attribute__((used)) static void thunder_i2c_remove_pci(struct pci_dev *pdev)
{
 struct octeon_i2c *i2c = pci_get_drvdata(pdev);

 thunder_i2c_smbus_remove(i2c);
 thunder_i2c_clock_disable(&pdev->dev, i2c->clk);
 i2c_del_adapter(&i2c->adap);
}
