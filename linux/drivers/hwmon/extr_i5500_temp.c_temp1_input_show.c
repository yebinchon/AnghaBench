
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;
typedef long s8 ;


 int REG_TSFSC ;
 int REG_TSTHRHI ;
 int pci_read_config_byte (struct pci_dev*,int ,long*) ;
 int pci_read_config_word (struct pci_dev*,int ,scalar_t__*) ;
 int sprintf (char*,char*,long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static ssize_t temp1_input_show(struct device *dev,
    struct device_attribute *devattr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev->parent);
 long temp;
 u16 tsthrhi;
 s8 tsfsc;

 pci_read_config_word(pdev, REG_TSTHRHI, &tsthrhi);
 pci_read_config_byte(pdev, REG_TSFSC, &tsfsc);
 temp = ((long)tsthrhi - tsfsc) * 500;

 return sprintf(buf, "%ld\n", temp);
}
