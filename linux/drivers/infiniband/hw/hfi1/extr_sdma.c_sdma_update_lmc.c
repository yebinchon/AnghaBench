
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int num_sdma; struct sdma_engine* per_sdma; } ;


 int CHECK_SLID ;
 int CHECK_SLID_MASK_MASK ;
 int CHECK_SLID_MASK_SHIFT ;
 int CHECK_SLID_VALUE_MASK ;
 int CHECK_SLID_VALUE_SHIFT ;
 int LINKVERB ;
 int SD (int ) ;
 int hfi1_cdbg (int ,char*,int,int) ;
 int write_sde_csr (struct sdma_engine*,int,int) ;

void sdma_update_lmc(struct hfi1_devdata *dd, u64 mask, u32 lid)
{
 struct sdma_engine *sde;
 int i;
 u64 sreg;

 sreg = ((mask & SD(CHECK_SLID_MASK_MASK)) <<
  SD(CHECK_SLID_MASK_SHIFT)) |
  (((lid & mask) & SD(CHECK_SLID_VALUE_MASK)) <<
  SD(CHECK_SLID_VALUE_SHIFT));

 for (i = 0; i < dd->num_sdma; i++) {
  hfi1_cdbg(LINKVERB, "SendDmaEngine[%d].SLID_CHECK = 0x%x",
     i, (u32)sreg);
  sde = &dd->per_sdma[i];
  write_sde_csr(sde, SD(CHECK_SLID), sreg);
 }
}
