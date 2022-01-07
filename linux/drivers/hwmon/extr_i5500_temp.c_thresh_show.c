
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int sprintf (char*,char*,long) ;
 struct pci_dev* to_pci_dev (int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t thresh_show(struct device *dev,
      struct device_attribute *devattr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev->parent);
 int reg = to_sensor_dev_attr(devattr)->index;
 long temp;
 u16 tsthr;

 pci_read_config_word(pdev, reg, &tsthr);
 temp = tsthr * 500;

 return sprintf(buf, "%ld\n", temp);
}
