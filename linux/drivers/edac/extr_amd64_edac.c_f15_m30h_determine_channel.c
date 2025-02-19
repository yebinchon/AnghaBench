
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct amd64_pvt {int dummy; } ;


 int dct_sel_interleave_addr (struct amd64_pvt*) ;

__attribute__((used)) static u8 f15_m30h_determine_channel(struct amd64_pvt *pvt, u64 sys_addr,
         u8 intlv_en, int num_dcts_intlv,
         u32 dct_sel)
{
 u8 channel = 0;
 u8 select;

 if (!(intlv_en))
  return (u8)(dct_sel);

 if (num_dcts_intlv == 2) {
  select = (sys_addr >> 8) & 0x3;
  channel = select ? 0x3 : 0;
 } else if (num_dcts_intlv == 4) {
  u8 intlv_addr = dct_sel_interleave_addr(pvt);
  switch (intlv_addr) {
  case 0x4:
   channel = (sys_addr >> 8) & 0x3;
   break;
  case 0x5:
   channel = (sys_addr >> 9) & 0x3;
   break;
  }
 }
 return channel;
}
