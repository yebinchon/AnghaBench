
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pl08x_phy_chan {scalar_t__ pl080s; scalar_t__ ftdmac020; } ;


 int FTDMAC020_LLI_SRC_WIDTH_MSK ;
 int FTDMAC020_LLI_SRC_WIDTH_SHIFT ;
 int FTDMAC020_LLI_TRANSFER_SIZE_MASK ;
 int PL080S_CONTROL_TRANSFER_SIZE_MASK ;
 size_t PL080S_LLI_CCTL2 ;
 int PL080_CONTROL_SWIDTH_MASK ;
 int PL080_CONTROL_SWIDTH_SHIFT ;
 int PL080_CONTROL_TRANSFER_SIZE_MASK ;
 size_t PL080_LLI_CCTL ;




__attribute__((used)) static u32 get_bytes_in_lli(struct pl08x_phy_chan *ch, const u32 *llis_va)
{
 u32 val;
 u32 bytes;

 if (ch->ftdmac020) {
  val = llis_va[PL080_LLI_CCTL];
  bytes = val & FTDMAC020_LLI_TRANSFER_SIZE_MASK;

  val = llis_va[PL080_LLI_CCTL];
  val &= FTDMAC020_LLI_SRC_WIDTH_MSK;
  val >>= FTDMAC020_LLI_SRC_WIDTH_SHIFT;
 } else if (ch->pl080s) {
  val = llis_va[PL080S_LLI_CCTL2];
  bytes = val & PL080S_CONTROL_TRANSFER_SIZE_MASK;

  val = llis_va[PL080_LLI_CCTL];
  val &= PL080_CONTROL_SWIDTH_MASK;
  val >>= PL080_CONTROL_SWIDTH_SHIFT;
 } else {

  val = llis_va[PL080_LLI_CCTL];
  bytes = val & PL080_CONTROL_TRANSFER_SIZE_MASK;

  val &= PL080_CONTROL_SWIDTH_MASK;
  val >>= PL080_CONTROL_SWIDTH_SHIFT;
 }

 switch (val) {
 case 128:
  break;
 case 130:
  bytes *= 2;
  break;
 case 129:
  bytes *= 4;
  break;
 }
 return bytes;
}
