
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long long u64 ;
typedef long long u32 ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_4__ {size_t channel; int enable; int dimm; int rank; int bank; int page; int col; int type; int section; long long eccmask; } ;
struct i7core_pvt {TYPE_2__ inject; int pci_noncore; int ** pci_ch; TYPE_1__* channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int dimms; } ;


 int MC_CFG_CONTROL ;
 scalar_t__ MC_CHANNEL_ADDR_MATCH ;
 scalar_t__ MC_CHANNEL_ERROR_INJECT ;
 scalar_t__ MC_CHANNEL_ERROR_MASK ;
 int disable_inject (struct mem_ctl_info*) ;
 int edac_dbg (int ,char*,long long,long long,long long) ;
 int kstrtoul (char const*,int,long*) ;
 int pci_write_config_dword (int ,int ,int) ;
 struct mem_ctl_info* to_mci (struct device*) ;
 int write_and_test (int ,scalar_t__,long long) ;

__attribute__((used)) static ssize_t i7core_inject_enable_store(struct device *dev,
       struct device_attribute *mattr,
       const char *data, size_t count)
{
 struct mem_ctl_info *mci = to_mci(dev);
 struct i7core_pvt *pvt = mci->pvt_info;
 u32 injectmask;
 u64 mask = 0;
 int rc;
 long enable;

 if (!pvt->pci_ch[pvt->inject.channel][0])
  return 0;

 rc = kstrtoul(data, 10, &enable);
 if ((rc < 0))
  return 0;

 if (enable) {
  pvt->inject.enable = 1;
 } else {
  disable_inject(mci);
  return count;
 }


 if (pvt->inject.dimm < 0)
  mask |= 1LL << 41;
 else {
  if (pvt->channel[pvt->inject.channel].dimms > 2)
   mask |= (pvt->inject.dimm & 0x3LL) << 35;
  else
   mask |= (pvt->inject.dimm & 0x1LL) << 36;
 }


 if (pvt->inject.rank < 0)
  mask |= 1LL << 40;
 else {
  if (pvt->channel[pvt->inject.channel].dimms > 2)
   mask |= (pvt->inject.rank & 0x1LL) << 34;
  else
   mask |= (pvt->inject.rank & 0x3LL) << 34;
 }


 if (pvt->inject.bank < 0)
  mask |= 1LL << 39;
 else
  mask |= (pvt->inject.bank & 0x15LL) << 30;


 if (pvt->inject.page < 0)
  mask |= 1LL << 38;
 else
  mask |= (pvt->inject.page & 0xffff) << 14;


 if (pvt->inject.col < 0)
  mask |= 1LL << 37;
 else
  mask |= (pvt->inject.col & 0x3fff);
 injectmask = (pvt->inject.type & 1) |
       (pvt->inject.section & 0x3) << 1 |
       (pvt->inject.type & 0x6) << (3 - 1);


 pci_write_config_dword(pvt->pci_noncore,
          MC_CFG_CONTROL, 0x2);

 write_and_test(pvt->pci_ch[pvt->inject.channel][0],
          MC_CHANNEL_ADDR_MATCH, mask);
 write_and_test(pvt->pci_ch[pvt->inject.channel][0],
          MC_CHANNEL_ADDR_MATCH + 4, mask >> 32L);

 write_and_test(pvt->pci_ch[pvt->inject.channel][0],
          MC_CHANNEL_ERROR_MASK, pvt->inject.eccmask);

 write_and_test(pvt->pci_ch[pvt->inject.channel][0],
          MC_CHANNEL_ERROR_INJECT, injectmask);






 pci_write_config_dword(pvt->pci_noncore,
          MC_CFG_CONTROL, 8);

 edac_dbg(0, "Error inject addr match 0x%016llx, ecc 0x%08x, inject 0x%08x\n",
   mask, pvt->inject.eccmask, injectmask);


 return count;
}
