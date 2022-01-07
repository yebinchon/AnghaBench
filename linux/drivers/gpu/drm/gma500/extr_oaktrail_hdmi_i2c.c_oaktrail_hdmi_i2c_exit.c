
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct hdmi_i2c_dev {int dummy; } ;


 int free_irq (int ,struct oaktrail_hdmi_dev*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct hdmi_i2c_dev*) ;
 int oaktrail_hdmi_i2c_adapter ;
 struct oaktrail_hdmi_dev* pci_get_drvdata (struct pci_dev*) ;

void oaktrail_hdmi_i2c_exit(struct pci_dev *dev)
{
 struct oaktrail_hdmi_dev *hdmi_dev;
 struct hdmi_i2c_dev *i2c_dev;

 hdmi_dev = pci_get_drvdata(dev);
 i2c_del_adapter(&oaktrail_hdmi_i2c_adapter);

 i2c_dev = hdmi_dev->i2c_dev;
 kfree(i2c_dev);
 free_irq(dev->irq, hdmi_dev);
}
