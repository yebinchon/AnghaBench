
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_mdmac_device {scalar_t__ reg_base; } ;
struct uniphier_mdmac_chan {scalar_t__ reg_ch_base; int chan_id; struct uniphier_mdmac_device* mdev; } ;


 int BIT (int ) ;
 scalar_t__ UNIPHIER_MDMAC_CH_IRQ_REQ ;
 int UNIPHIER_MDMAC_CH_IRQ__ABORT ;
 scalar_t__ UNIPHIER_MDMAC_CMD ;
 int UNIPHIER_MDMAC_CMD_ABORT ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int uniphier_mdmac_abort(struct uniphier_mdmac_chan *mc)
{
 struct uniphier_mdmac_device *mdev = mc->mdev;
 u32 irq_flag = UNIPHIER_MDMAC_CH_IRQ__ABORT;
 u32 val;


 writel(irq_flag, mc->reg_ch_base + UNIPHIER_MDMAC_CH_IRQ_REQ);

 writel(UNIPHIER_MDMAC_CMD_ABORT | BIT(mc->chan_id),
        mdev->reg_base + UNIPHIER_MDMAC_CMD);





 return readl_poll_timeout(mc->reg_ch_base + UNIPHIER_MDMAC_CH_IRQ_REQ,
      val, val & irq_flag, 0, 20);
}
