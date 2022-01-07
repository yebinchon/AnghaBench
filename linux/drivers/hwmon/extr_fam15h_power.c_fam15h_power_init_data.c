
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dev; int devfn; int bus; } ;
struct fam15h_power_data {int base_tdp; int tdp_to_watts; int processor_pwr_watts; int max_cu_acc_power; int power_period; int cpu_pwr_sample_ratio; } ;


 int ENODEV ;
 int MSR_F15H_CU_MAX_PWR_ACCUMULATOR ;
 int PCI_DEVFN (int ,int) ;
 int PCI_SLOT (int ) ;
 int REG_PROCESSOR_TDP ;
 int REG_TDP_LIMIT3 ;
 int X86_FEATURE_ACC_POWER ;
 int boot_cpu_has (int ) ;
 int cpuid_ecx (int) ;
 int dev_warn (int *,char*,unsigned int) ;
 int fam15h_power_init_attrs (struct pci_dev*,struct fam15h_power_data*) ;
 int pci_bus_read_config_dword (int ,int ,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pr_err (char*) ;
 scalar_t__ rdmsrl_safe (int ,int*) ;
 int read_registers (struct fam15h_power_data*) ;

__attribute__((used)) static int fam15h_power_init_data(struct pci_dev *f4,
      struct fam15h_power_data *data)
{
 u32 val;
 u64 tmp;
 int ret;

 pci_read_config_dword(f4, REG_PROCESSOR_TDP, &val);
 data->base_tdp = val >> 16;
 tmp = val & 0xffff;

 pci_bus_read_config_dword(f4->bus, PCI_DEVFN(PCI_SLOT(f4->devfn), 5),
      REG_TDP_LIMIT3, &val);

 data->tdp_to_watts = ((val & 0x3ff) << 6) | ((val >> 10) & 0x3f);
 tmp *= data->tdp_to_watts;


 if ((tmp >> 16) >= 256)
  dev_warn(&f4->dev,
    "Bogus value for ProcessorPwrWatts (processor_pwr_watts>=%u)\n",
    (unsigned int) (tmp >> 16));


 data->processor_pwr_watts = (tmp * 15625) >> 10;

 ret = fam15h_power_init_attrs(f4, data);
 if (ret)
  return ret;



 if (!boot_cpu_has(X86_FEATURE_ACC_POWER))
  return 0;






 data->cpu_pwr_sample_ratio = cpuid_ecx(0x80000007);

 if (rdmsrl_safe(MSR_F15H_CU_MAX_PWR_ACCUMULATOR, &tmp)) {
  pr_err("Failed to read max compute unit power accumulator MSR\n");
  return -ENODEV;
 }

 data->max_cu_acc_power = tmp;







 data->power_period = 10;

 return read_registers(data);
}
