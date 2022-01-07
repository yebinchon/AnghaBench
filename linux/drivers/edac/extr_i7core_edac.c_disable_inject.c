
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_2__ {size_t channel; scalar_t__ enable; } ;
struct i7core_pvt {TYPE_1__ inject; int ** pci_ch; } ;


 int ENODEV ;
 int MC_CHANNEL_ERROR_INJECT ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static int disable_inject(const struct mem_ctl_info *mci)
{
 struct i7core_pvt *pvt = mci->pvt_info;

 pvt->inject.enable = 0;

 if (!pvt->pci_ch[pvt->inject.channel][0])
  return -ENODEV;

 pci_write_config_dword(pvt->pci_ch[pvt->inject.channel][0],
    MC_CHANNEL_ERROR_INJECT, 0);

 return 0;
}
