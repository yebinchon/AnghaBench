
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {scalar_t__ mode; } ;


 int BIT_MHL_PLL_CTL0_CRYSTAL_CLK_SEL ;
 int BIT_MHL_PLL_CTL0_ZONE_MASK_OE ;
 scalar_t__ CM_MHL1 ;
 int REG_MHL_PLL_CTL0 ;
 int REG_TX_ZONE_CTL1 ;
 int VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X ;
 int VAL_TX_ZONE_CTL1_TX_ZONE_CTRL_MODE ;
 int sii8620_write_seq_static (struct sii8620*,int ,int,int ,int) ;

__attribute__((used)) static void sii8620_set_auto_zone(struct sii8620 *ctx)
{
 if (ctx->mode != CM_MHL1) {
  sii8620_write_seq_static(ctx,
   REG_TX_ZONE_CTL1, 0x0,
   REG_MHL_PLL_CTL0, VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X
    | BIT_MHL_PLL_CTL0_CRYSTAL_CLK_SEL
    | BIT_MHL_PLL_CTL0_ZONE_MASK_OE
  );
 } else {
  sii8620_write_seq_static(ctx,
   REG_TX_ZONE_CTL1, VAL_TX_ZONE_CTL1_TX_ZONE_CTRL_MODE,
   REG_MHL_PLL_CTL0, VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X
    | BIT_MHL_PLL_CTL0_ZONE_MASK_OE
  );
 }
}
