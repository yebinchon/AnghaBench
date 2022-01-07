
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {unsigned long long dclk_freq; struct pci_dev** pci_mcr; } ;


 int ENODEV ;
 int MC_SCRUB_CONTROL ;
 unsigned long long SCRUBINTERVAL_MASK ;
 int do_div (unsigned long long,unsigned long long) ;
 int pci_read_config_dword (struct pci_dev*,int ,unsigned long long*) ;

__attribute__((used)) static int get_sdram_scrub_rate(struct mem_ctl_info *mci)
{
 struct i7core_pvt *pvt = mci->pvt_info;
 struct pci_dev *pdev;
 const u32 cache_line_size = 64;
 const u32 freq_dclk_mhz = pvt->dclk_freq;
 unsigned long long scrub_rate;
 u32 scrubval;


 pdev = pvt->pci_mcr[2];
 if (!pdev)
  return -ENODEV;


 pci_read_config_dword(pdev, MC_SCRUB_CONTROL, &scrubval);


 scrubval &= SCRUBINTERVAL_MASK;
 if (!scrubval)
  return 0;


 scrub_rate = (unsigned long long)freq_dclk_mhz *
  1000000 * cache_line_size;
 do_div(scrub_rate, scrubval);
 return (int)scrub_rate;
}
