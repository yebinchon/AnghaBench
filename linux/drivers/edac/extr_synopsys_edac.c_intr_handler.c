
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct synps_platform_data {int (* get_error_info ) (struct synps_edac_priv*) ;} ;
struct TYPE_2__ {scalar_t__ ue_cnt; scalar_t__ ce_cnt; } ;
struct synps_edac_priv {scalar_t__ baseaddr; int ue_cnt; int ce_cnt; TYPE_1__ stat; struct synps_platform_data* p_data; } ;
struct mem_ctl_info {struct synps_edac_priv* pvt_info; } ;
typedef int irqreturn_t ;


 int DDR_QOSCE_MASK ;
 int DDR_QOSUE_MASK ;
 scalar_t__ DDR_QOS_IRQ_STAT_OFST ;
 int ECC_CE_UE_INTR_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int edac_dbg (int,char*,int ,int ) ;
 int handle_error (struct mem_ctl_info*,TYPE_1__*) ;
 int readl (scalar_t__) ;
 int stub1 (struct synps_edac_priv*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t intr_handler(int irq, void *dev_id)
{
 const struct synps_platform_data *p_data;
 struct mem_ctl_info *mci = dev_id;
 struct synps_edac_priv *priv;
 int status, regval;

 priv = mci->pvt_info;
 p_data = priv->p_data;

 regval = readl(priv->baseaddr + DDR_QOS_IRQ_STAT_OFST);
 regval &= (DDR_QOSCE_MASK | DDR_QOSUE_MASK);
 if (!(regval & ECC_CE_UE_INTR_MASK))
  return IRQ_NONE;

 status = p_data->get_error_info(priv);
 if (status)
  return IRQ_NONE;

 priv->ce_cnt += priv->stat.ce_cnt;
 priv->ue_cnt += priv->stat.ue_cnt;
 handle_error(mci, &priv->stat);

 edac_dbg(3, "Total error count CE %d UE %d\n",
   priv->ce_cnt, priv->ue_cnt);
 writel(regval, priv->baseaddr + DDR_QOS_IRQ_STAT_OFST);
 return IRQ_HANDLED;
}
