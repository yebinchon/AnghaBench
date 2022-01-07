
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct amd64_pvt {int dct_sel_hi; } ;


 int BIT_64 (int) ;
 int GENMASK_ULL (int,int) ;
 int dhar_base (struct amd64_pvt*) ;
 scalar_t__ dhar_valid (struct amd64_pvt*) ;
 int f10_dhar_offset (struct amd64_pvt*) ;
 int get_dram_base (struct amd64_pvt*,int ) ;

__attribute__((used)) static u64 f1x_get_norm_dct_addr(struct amd64_pvt *pvt, u8 range,
     u64 sys_addr, bool hi_rng,
     u32 dct_sel_base_addr)
{
 u64 chan_off;
 u64 dram_base = get_dram_base(pvt, range);
 u64 hole_off = f10_dhar_offset(pvt);
 u64 dct_sel_base_off = (u64)(pvt->dct_sel_hi & 0xFFFFFC00) << 16;

 if (hi_rng) {
  if ((!(dct_sel_base_addr >> 16) ||
       dct_sel_base_addr < dhar_base(pvt)) &&
      dhar_valid(pvt) &&
      (sys_addr >= BIT_64(32)))
   chan_off = hole_off;
  else
   chan_off = dct_sel_base_off;
 } else {
  if (dhar_valid(pvt) && (sys_addr >= BIT_64(32)))
   chan_off = hole_off;
  else
   chan_off = dram_base;
 }

 return (sys_addr & GENMASK_ULL(47,6)) - (chan_off & GENMASK_ULL(47,23));
}
