
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_mdmac_desc {scalar_t__ sg_cur; scalar_t__ sg_len; int vd; } ;
struct TYPE_2__ {int lock; } ;
struct uniphier_mdmac_chan {TYPE_1__ vc; struct uniphier_mdmac_desc* md; scalar_t__ reg_ch_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ UNIPHIER_MDMAC_CH_IRQ_DET ;
 scalar_t__ UNIPHIER_MDMAC_CH_IRQ_REQ ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uniphier_mdmac_handle (struct uniphier_mdmac_chan*,struct uniphier_mdmac_desc*) ;
 struct uniphier_mdmac_desc* uniphier_mdmac_next_desc (struct uniphier_mdmac_chan*) ;
 int vchan_cookie_complete (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t uniphier_mdmac_interrupt(int irq, void *dev_id)
{
 struct uniphier_mdmac_chan *mc = dev_id;
 struct uniphier_mdmac_desc *md;
 irqreturn_t ret = IRQ_HANDLED;
 u32 irq_stat;

 spin_lock(&mc->vc.lock);

 irq_stat = readl(mc->reg_ch_base + UNIPHIER_MDMAC_CH_IRQ_DET);





 if (!irq_stat) {
  ret = IRQ_NONE;
  goto out;
 }


 writel(irq_stat, mc->reg_ch_base + UNIPHIER_MDMAC_CH_IRQ_REQ);






 md = mc->md;
 if (!md)
  goto out;

 md->sg_cur++;

 if (md->sg_cur >= md->sg_len) {
  vchan_cookie_complete(&md->vd);
  md = uniphier_mdmac_next_desc(mc);
  if (!md)
   goto out;
 }

 uniphier_mdmac_handle(mc, md);

out:
 spin_unlock(&mc->vc.lock);

 return ret;
}
