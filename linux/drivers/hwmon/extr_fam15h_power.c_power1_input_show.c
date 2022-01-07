
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int devfn; int bus; } ;
struct fam15h_power_data {int tdp_to_watts; scalar_t__ base_tdp; struct pci_dev* pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s32 ;


 int PCI_DEVFN (int ,int) ;
 int PCI_SLOT (int ) ;
 int REG_TDP_LIMIT3 ;
 int REG_TDP_RUNNING_AVERAGE ;
 struct fam15h_power_data* dev_get_drvdata (struct device*) ;
 scalar_t__ is_carrizo_or_later () ;
 int pci_bus_read_config_dword (int ,int ,int ,int*) ;
 int sign_extend32 (int,int) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t power1_input_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 u32 val, tdp_limit, running_avg_range;
 s32 running_avg_capture;
 u64 curr_pwr_watts;
 struct fam15h_power_data *data = dev_get_drvdata(dev);
 struct pci_dev *f4 = data->pdev;

 pci_bus_read_config_dword(f4->bus, PCI_DEVFN(PCI_SLOT(f4->devfn), 5),
      REG_TDP_RUNNING_AVERAGE, &val);





 if (is_carrizo_or_later()) {
  running_avg_capture = val >> 4;
  running_avg_capture = sign_extend32(running_avg_capture, 27);
 } else {
  running_avg_capture = (val >> 4) & 0x3fffff;
  running_avg_capture = sign_extend32(running_avg_capture, 21);
 }

 running_avg_range = (val & 0xf) + 1;

 pci_bus_read_config_dword(f4->bus, PCI_DEVFN(PCI_SLOT(f4->devfn), 5),
      REG_TDP_LIMIT3, &val);





 if (is_carrizo_or_later())
  tdp_limit = val >> 16;
 else
  tdp_limit = (val >> 16) & 0x1fff;

 curr_pwr_watts = ((u64)(tdp_limit +
    data->base_tdp)) << running_avg_range;
 curr_pwr_watts -= running_avg_capture;
 curr_pwr_watts *= data->tdp_to_watts;
 curr_pwr_watts = (curr_pwr_watts * 15625) >> (10 + running_avg_range);
 return sprintf(buf, "%u\n", (unsigned int) curr_pwr_watts);
}
