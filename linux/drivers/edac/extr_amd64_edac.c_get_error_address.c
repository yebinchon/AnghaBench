
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct mce {int addr; int extcpu; } ;
struct amd64_pvt {int fam; int F1; } ;


 int DRAM_LOCAL_NODE_BASE ;
 int DRAM_LOCAL_NODE_LIM ;
 int GENMASK_ULL (int,int) ;
 int __fls (int) ;
 int amd64_read_pci_cfg (int ,int ,int*) ;
 int amd_get_nb_id (int ) ;
 struct mem_ctl_info* edac_mc_find (int ) ;

__attribute__((used)) static u64 get_error_address(struct amd64_pvt *pvt, struct mce *m)
{
 u16 mce_nid = amd_get_nb_id(m->extcpu);
 struct mem_ctl_info *mci;
 u8 start_bit = 1;
 u8 end_bit = 47;
 u64 addr;

 mci = edac_mc_find(mce_nid);
 if (!mci)
  return 0;

 pvt = mci->pvt_info;

 if (pvt->fam == 0xf) {
  start_bit = 3;
  end_bit = 39;
 }

 addr = m->addr & GENMASK_ULL(end_bit, start_bit);




 if (pvt->fam == 0x15) {
  u64 cc6_base, tmp_addr;
  u32 tmp;
  u8 intlv_en;

  if ((addr & GENMASK_ULL(47, 24)) >> 24 != 0x00fdf7)
   return addr;


  amd64_read_pci_cfg(pvt->F1, DRAM_LOCAL_NODE_LIM, &tmp);
  intlv_en = tmp >> 21 & 0x7;


  cc6_base = (tmp & GENMASK_ULL(20, 0)) << 3;


  cc6_base |= intlv_en ^ 0x7;


  cc6_base <<= 24;

  if (!intlv_en)
   return cc6_base | (addr & GENMASK_ULL(23, 0));

  amd64_read_pci_cfg(pvt->F1, DRAM_LOCAL_NODE_BASE, &tmp);


  tmp_addr = (addr & GENMASK_ULL(23, 12)) << __fls(intlv_en + 1);


  tmp_addr |= (tmp & GENMASK_ULL(23, 21)) >> 9;


  tmp_addr |= addr & GENMASK_ULL(11, 0);

  return cc6_base | tmp_addr;
 }

 return addr;
}
