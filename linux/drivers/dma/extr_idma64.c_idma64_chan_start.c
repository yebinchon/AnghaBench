
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idma64_hw_desc {int llp; } ;
struct idma64_desc {struct idma64_hw_desc* hw; } ;
struct idma64_chan {int mask; struct idma64_desc* desc; } ;
struct idma64 {int dummy; } ;


 int CH_EN ;
 int CTL_HI ;
 int CTL_LO ;
 int DAR ;
 int IDMA64C_CTLH_BLOCK_TS (unsigned long) ;
 int IDMA64C_CTLL_LLP_D_EN ;
 int IDMA64C_CTLL_LLP_S_EN ;
 int LLP ;
 int SAR ;
 int channel_set_bit (struct idma64*,int ,int ) ;
 int channel_writel (struct idma64_chan*,int ,int) ;
 int channel_writeq (struct idma64_chan*,int ,int ) ;

__attribute__((used)) static void idma64_chan_start(struct idma64 *idma64, struct idma64_chan *idma64c)
{
 struct idma64_desc *desc = idma64c->desc;
 struct idma64_hw_desc *hw = &desc->hw[0];

 channel_writeq(idma64c, SAR, 0);
 channel_writeq(idma64c, DAR, 0);

 channel_writel(idma64c, CTL_HI, IDMA64C_CTLH_BLOCK_TS(~0UL));
 channel_writel(idma64c, CTL_LO, IDMA64C_CTLL_LLP_S_EN | IDMA64C_CTLL_LLP_D_EN);

 channel_writeq(idma64c, LLP, hw->llp);

 channel_set_bit(idma64, CH_EN, idma64c->mask);
}
