
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pl08x_phy_chan {scalar_t__ reg_control; scalar_t__ base; scalar_t__ pl080s; scalar_t__ ftdmac020; } ;


 int FTDMAC020_CH_CSR_SRC_WIDTH_MSK ;
 int FTDMAC020_CH_CSR_SRC_WIDTH_SHIFT ;
 scalar_t__ FTDMAC020_CH_SIZE ;
 scalar_t__ PL080S_CH_CONTROL2 ;
 int PL080S_CONTROL_TRANSFER_SIZE_MASK ;
 int PL080_CONTROL_SWIDTH_MASK ;
 int PL080_CONTROL_SWIDTH_SHIFT ;
 int PL080_CONTROL_TRANSFER_SIZE_MASK ;



 int readl (scalar_t__) ;

__attribute__((used)) static u32 get_bytes_in_phy_channel(struct pl08x_phy_chan *ch)
{
 u32 val;
 u32 bytes;

 if (ch->ftdmac020) {
  bytes = readl(ch->base + FTDMAC020_CH_SIZE);

  val = readl(ch->reg_control);
  val &= FTDMAC020_CH_CSR_SRC_WIDTH_MSK;
  val >>= FTDMAC020_CH_CSR_SRC_WIDTH_SHIFT;
 } else if (ch->pl080s) {
  val = readl(ch->base + PL080S_CH_CONTROL2);
  bytes = val & PL080S_CONTROL_TRANSFER_SIZE_MASK;

  val = readl(ch->reg_control);
  val &= PL080_CONTROL_SWIDTH_MASK;
  val >>= PL080_CONTROL_SWIDTH_SHIFT;
 } else {

  val = readl(ch->reg_control);
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
