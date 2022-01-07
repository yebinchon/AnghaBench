
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {scalar_t__ dclk_freq; struct pci_dev** pci_mcr; } ;


 int EINVAL ;
 int ENODEV ;
 int MC_SCRUB_CONTROL ;
 int MC_SSRCONTROL ;
 scalar_t__ SCRUBINTERVAL_MASK ;
 scalar_t__ SSR_MODE_DISABLE ;
 scalar_t__ SSR_MODE_ENABLE ;
 scalar_t__ SSR_MODE_MASK ;
 scalar_t__ STARTSCRUB ;
 int do_div (unsigned long long,scalar_t__) ;
 int pci_read_config_dword (struct pci_dev*,int ,scalar_t__*) ;
 int pci_write_config_dword (struct pci_dev*,int ,scalar_t__) ;
 int write_and_test (struct pci_dev*,int ,scalar_t__) ;

__attribute__((used)) static int set_sdram_scrub_rate(struct mem_ctl_info *mci, u32 new_bw)
{
 struct i7core_pvt *pvt = mci->pvt_info;
 struct pci_dev *pdev;
 u32 dw_scrub;
 u32 dw_ssr;


 pdev = pvt->pci_mcr[2];
 if (!pdev)
  return -ENODEV;

 pci_read_config_dword(pdev, MC_SCRUB_CONTROL, &dw_scrub);

 if (new_bw == 0) {

  dw_scrub &= ~STARTSCRUB;

  write_and_test(pdev, MC_SCRUB_CONTROL,
          dw_scrub & ~SCRUBINTERVAL_MASK);


  pci_read_config_dword(pdev, MC_SSRCONTROL, &dw_ssr);
  dw_ssr &= ~SSR_MODE_MASK;
  dw_ssr |= SSR_MODE_DISABLE;
 } else {
  const int cache_line_size = 64;
  const u32 freq_dclk_mhz = pvt->dclk_freq;
  unsigned long long scrub_interval;




  scrub_interval = (unsigned long long)freq_dclk_mhz *
   cache_line_size * 1000000;
  do_div(scrub_interval, new_bw);

  if (!scrub_interval || scrub_interval > SCRUBINTERVAL_MASK)
   return -EINVAL;

  dw_scrub = SCRUBINTERVAL_MASK & scrub_interval;


  pci_write_config_dword(pdev, MC_SCRUB_CONTROL,
           STARTSCRUB | dw_scrub);


  pci_read_config_dword(pdev, MC_SSRCONTROL, &dw_ssr);
  dw_ssr &= ~SSR_MODE_MASK;
  dw_ssr |= SSR_MODE_ENABLE;
 }

 pci_write_config_dword(pdev, MC_SSRCONTROL, dw_ssr);

 return new_bw;
}
