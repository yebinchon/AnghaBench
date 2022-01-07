
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int REG_CTSTS ;
 int pci_read_config_byte (struct pci_dev*,int ,scalar_t__*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct pci_dev* to_pci_dev (int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t alarm_show(struct device *dev,
     struct device_attribute *devattr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev->parent);
 int nr = to_sensor_dev_attr(devattr)->index;
 u8 ctsts;

 pci_read_config_byte(pdev, REG_CTSTS, &ctsts);
 return sprintf(buf, "%u\n", (unsigned int)ctsts & (1 << nr));
}
