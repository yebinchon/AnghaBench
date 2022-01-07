
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct amd64_pvt {int top_mem; int top_mem2; size_t dram_type; int dchr1; int dclr1; int dchr0; int dclr0; int online_spare; int F3; int dbam0; int dhar; int F1; int nbcap; int F0; scalar_t__ umc; } ;


 int BIT (int) ;
 int DBAM0 ;
 int DCHR0 ;
 int DCLR0 ;
 int DF_DHAR ;
 int DHAR ;
 unsigned int DRAM_RANGES ;
 int F10_ONLINE_SPARE ;
 int MSR_K8_SYSCFG ;
 int MSR_K8_TOP_MEM1 ;
 int MSR_K8_TOP_MEM2 ;
 int NBCAP ;
 int __read_mc_regs_df (struct amd64_pvt*) ;
 int amd64_read_dct_pci_cfg (struct amd64_pvt*,int,int ,int *) ;
 int amd64_read_pci_cfg (int ,int ,int *) ;
 int dct_ganging_enabled (struct amd64_pvt*) ;
 int determine_ecc_sym_sz (struct amd64_pvt*) ;
 int determine_memory_type (struct amd64_pvt*) ;
 int dram_dst_node (struct amd64_pvt*,unsigned int) ;
 scalar_t__ dram_intlv_en (struct amd64_pvt*,unsigned int) ;
 int dram_intlv_sel (struct amd64_pvt*,unsigned int) ;
 int dram_rw (struct amd64_pvt*,unsigned int) ;
 int dump_misc_regs (struct amd64_pvt*) ;
 int edac_dbg (int,char*,...) ;
 int* edac_mem_types ;
 int get_dram_base (struct amd64_pvt*,unsigned int) ;
 int get_dram_limit (struct amd64_pvt*,unsigned int) ;
 int rdmsrl (int ,int) ;
 int read_dct_base_mask (struct amd64_pvt*) ;
 int read_dram_base_limit_regs (struct amd64_pvt*,unsigned int) ;
 int read_dram_ctl_register (struct amd64_pvt*) ;

__attribute__((used)) static void read_mc_regs(struct amd64_pvt *pvt)
{
 unsigned int range;
 u64 msr_val;





 rdmsrl(MSR_K8_TOP_MEM1, pvt->top_mem);
 edac_dbg(0, "  TOP_MEM:  0x%016llx\n", pvt->top_mem);


 rdmsrl(MSR_K8_SYSCFG, msr_val);
 if (msr_val & BIT(21)) {
  rdmsrl(MSR_K8_TOP_MEM2, pvt->top_mem2);
  edac_dbg(0, "  TOP_MEM2: 0x%016llx\n", pvt->top_mem2);
 } else {
  edac_dbg(0, "  TOP_MEM2 disabled\n");
 }

 if (pvt->umc) {
  __read_mc_regs_df(pvt);
  amd64_read_pci_cfg(pvt->F0, DF_DHAR, &pvt->dhar);

  goto skip;
 }

 amd64_read_pci_cfg(pvt->F3, NBCAP, &pvt->nbcap);

 read_dram_ctl_register(pvt);

 for (range = 0; range < DRAM_RANGES; range++) {
  u8 rw;


  read_dram_base_limit_regs(pvt, range);

  rw = dram_rw(pvt, range);
  if (!rw)
   continue;

  edac_dbg(1, "  DRAM range[%d], base: 0x%016llx; limit: 0x%016llx\n",
    range,
    get_dram_base(pvt, range),
    get_dram_limit(pvt, range));

  edac_dbg(1, "   IntlvEn=%s; Range access: %s%s IntlvSel=%d DstNode=%d\n",
    dram_intlv_en(pvt, range) ? "Enabled" : "Disabled",
    (rw & 0x1) ? "R" : "-",
    (rw & 0x2) ? "W" : "-",
    dram_intlv_sel(pvt, range),
    dram_dst_node(pvt, range));
 }

 amd64_read_pci_cfg(pvt->F1, DHAR, &pvt->dhar);
 amd64_read_dct_pci_cfg(pvt, 0, DBAM0, &pvt->dbam0);

 amd64_read_pci_cfg(pvt->F3, F10_ONLINE_SPARE, &pvt->online_spare);

 amd64_read_dct_pci_cfg(pvt, 0, DCLR0, &pvt->dclr0);
 amd64_read_dct_pci_cfg(pvt, 0, DCHR0, &pvt->dchr0);

 if (!dct_ganging_enabled(pvt)) {
  amd64_read_dct_pci_cfg(pvt, 1, DCLR0, &pvt->dclr1);
  amd64_read_dct_pci_cfg(pvt, 1, DCHR0, &pvt->dchr1);
 }

skip:
 read_dct_base_mask(pvt);

 determine_memory_type(pvt);
 edac_dbg(1, "  DIMM type: %s\n", edac_mem_types[pvt->dram_type]);

 determine_ecc_sym_sz(pvt);

 dump_misc_regs(pvt);
}
