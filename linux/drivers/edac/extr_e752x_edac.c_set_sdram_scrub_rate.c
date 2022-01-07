
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct scrubrate {scalar_t__ bandwidth; int scrubval; } ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct e752x_pvt {TYPE_1__* dev_info; struct pci_dev* dev_d0f0; } ;
struct TYPE_2__ {scalar_t__ ctl_dev; } ;


 int E752X_MCHSCRB ;
 scalar_t__ PCI_DEVICE_ID_INTEL_3100_0 ;
 scalar_t__ SDRATE_EOT ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 struct scrubrate* scrubrates_e752x ;
 struct scrubrate* scrubrates_i3100 ;

__attribute__((used)) static int set_sdram_scrub_rate(struct mem_ctl_info *mci, u32 new_bw)
{
 const struct scrubrate *scrubrates;
 struct e752x_pvt *pvt = (struct e752x_pvt *) mci->pvt_info;
 struct pci_dev *pdev = pvt->dev_d0f0;
 int i;

 if (pvt->dev_info->ctl_dev == PCI_DEVICE_ID_INTEL_3100_0)
  scrubrates = scrubrates_i3100;
 else
  scrubrates = scrubrates_e752x;





 for (i = 0; scrubrates[i].bandwidth != SDRATE_EOT; i++)
  if (scrubrates[i].bandwidth >= new_bw)
   break;

 if (scrubrates[i].bandwidth == SDRATE_EOT)
  return -1;

 pci_write_config_word(pdev, E752X_MCHSCRB, scrubrates[i].scrubval);

 return scrubrates[i].bandwidth;
}
