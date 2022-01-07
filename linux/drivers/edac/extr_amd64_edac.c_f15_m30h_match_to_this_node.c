
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct amd64_pvt {int model; int F1; } ;


 int BIT (int ) ;
 int BIT_64 (int) ;
 scalar_t__ DRAM_CONT_BASE ;
 scalar_t__ DRAM_CONT_HIGH_OFF ;
 scalar_t__ DRAM_CONT_LIMIT ;
 int EINVAL ;
 int amd64_read_pci_cfg (int ,scalar_t__,int*) ;
 int amd64_warn (char*,int) ;
 scalar_t__ dct_sel_baseaddr (struct amd64_pvt*) ;
 int dct_sel_interleave_addr (struct amd64_pvt*) ;
 int dhar_base (struct amd64_pvt*) ;
 scalar_t__ dhar_valid (struct amd64_pvt*) ;
 int dram_dst_node (struct amd64_pvt*,unsigned int) ;
 int dram_intlv_en (struct amd64_pvt*,unsigned int) ;
 int edac_dbg (int,char*,int,...) ;
 int f10_dhar_offset (struct amd64_pvt*) ;
 int f15_m30h_determine_channel (struct amd64_pvt*,int,int,int,int) ;
 int f15h_select_dct (struct amd64_pvt*,int) ;
 int f1x_determine_channel (struct amd64_pvt*,int,int,int) ;
 int f1x_lookup_addr_in_dct (int,int,int) ;
 int get_dram_base (struct amd64_pvt*,unsigned int) ;
 int get_dram_limit (struct amd64_pvt*,unsigned int) ;
 scalar_t__ hweight8 (int) ;

__attribute__((used)) static int f15_m30h_match_to_this_node(struct amd64_pvt *pvt, unsigned range,
     u64 sys_addr, int *chan_sel)
{
 int cs_found = -EINVAL;
 int num_dcts_intlv = 0;
 u64 chan_addr, chan_offset;
 u64 dct_base, dct_limit;
 u32 dct_cont_base_reg, dct_cont_limit_reg, tmp;
 u8 channel, alias_channel, leg_mmio_hole, dct_sel, dct_offset_en;

 u64 dhar_offset = f10_dhar_offset(pvt);
 u8 intlv_addr = dct_sel_interleave_addr(pvt);
 u8 node_id = dram_dst_node(pvt, range);
 u8 intlv_en = dram_intlv_en(pvt, range);

 amd64_read_pci_cfg(pvt->F1, DRAM_CONT_BASE, &dct_cont_base_reg);
 amd64_read_pci_cfg(pvt->F1, DRAM_CONT_LIMIT, &dct_cont_limit_reg);

 dct_offset_en = (u8) ((dct_cont_base_reg >> 3) & BIT(0));
 dct_sel = (u8) ((dct_cont_base_reg >> 4) & 0x7);

 edac_dbg(1, "(range %d) SystemAddr= 0x%llx Limit=0x%llx\n",
   range, sys_addr, get_dram_limit(pvt, range));

 if (!(get_dram_base(pvt, range) <= sys_addr) &&
     !(get_dram_limit(pvt, range) >= sys_addr))
  return -EINVAL;

 if (dhar_valid(pvt) &&
     dhar_base(pvt) <= sys_addr &&
     sys_addr < BIT_64(32)) {
  amd64_warn("Huh? Address is in the MMIO hole: 0x%016llx\n",
       sys_addr);
  return -EINVAL;
 }


 dct_base = (u64) dct_sel_baseaddr(pvt);
 dct_limit = (dct_cont_limit_reg >> 11) & 0x1FFF;

 if (!(dct_cont_base_reg & BIT(0)) &&
     !(dct_base <= (sys_addr >> 27) &&
       dct_limit >= (sys_addr >> 27)))
  return -EINVAL;


 num_dcts_intlv = (int) hweight8(intlv_en);

 if (!(num_dcts_intlv % 2 == 0) || (num_dcts_intlv > 4))
  return -EINVAL;

 if (pvt->model >= 0x60)
  channel = f1x_determine_channel(pvt, sys_addr, 0, intlv_en);
 else
  channel = f15_m30h_determine_channel(pvt, sys_addr, intlv_en,
           num_dcts_intlv, dct_sel);


 if (channel > 3)
  return -EINVAL;

 leg_mmio_hole = (u8) (dct_cont_base_reg >> 1 & BIT(0));


 if (leg_mmio_hole && (sys_addr >= BIT_64(32)))
  chan_offset = dhar_offset;
 else
  chan_offset = dct_base << 27;

 chan_addr = sys_addr - chan_offset;


 if (num_dcts_intlv == 2) {
  if (intlv_addr == 0x4)
   chan_addr = ((chan_addr >> 9) << 8) |
      (chan_addr & 0xff);
  else if (intlv_addr == 0x5)
   chan_addr = ((chan_addr >> 10) << 9) |
      (chan_addr & 0x1ff);
  else
   return -EINVAL;

 } else if (num_dcts_intlv == 4) {
  if (intlv_addr == 0x4)
   chan_addr = ((chan_addr >> 10) << 8) |
       (chan_addr & 0xff);
  else if (intlv_addr == 0x5)
   chan_addr = ((chan_addr >> 11) << 9) |
       (chan_addr & 0x1ff);
  else
   return -EINVAL;
 }

 if (dct_offset_en) {
  amd64_read_pci_cfg(pvt->F1,
       DRAM_CONT_HIGH_OFF + (int) channel * 4,
       &tmp);
  chan_addr += (u64) ((tmp >> 11) & 0xfff) << 27;
 }

 f15h_select_dct(pvt, channel);

 edac_dbg(1, "   Normalized DCT addr: 0x%llx\n", chan_addr);
 alias_channel = (channel == 3) ? 1 : channel;

 cs_found = f1x_lookup_addr_in_dct(chan_addr, node_id, alias_channel);

 if (cs_found >= 0)
  *chan_sel = alias_channel;

 return cs_found;
}
