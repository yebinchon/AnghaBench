
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int mutex; int ipu; } ;
struct ipu_dp {int foreground; int in_cs; } ;


 scalar_t__ DP_COM_CONF ;
 int DP_COM_CONF_CSC_DEF_BG ;
 int DP_COM_CONF_CSC_DEF_BOTH ;
 int DP_COM_CONF_CSC_DEF_MASK ;
 int DP_COM_CONF_FG_EN ;
 scalar_t__ DP_FG_POS ;
 int IPUV3_COLORSPACE_UNKNOWN ;
 int ipu_srm_dp_update (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 struct ipu_flow* to_flow (struct ipu_dp*) ;
 int writel (int,scalar_t__) ;

void ipu_dp_disable_channel(struct ipu_dp *dp, bool sync)
{
 struct ipu_flow *flow = to_flow(dp);
 struct ipu_dp_priv *priv = flow->priv;
 u32 reg, csc;

 dp->in_cs = IPUV3_COLORSPACE_UNKNOWN;

 if (!dp->foreground)
  return;

 mutex_lock(&priv->mutex);

 reg = readl(flow->base + DP_COM_CONF);
 csc = reg & DP_COM_CONF_CSC_DEF_MASK;
 reg &= ~DP_COM_CONF_CSC_DEF_MASK;
 if (csc == DP_COM_CONF_CSC_DEF_BOTH || csc == DP_COM_CONF_CSC_DEF_BG)
  reg |= DP_COM_CONF_CSC_DEF_BG;

 reg &= ~DP_COM_CONF_FG_EN;
 writel(reg, flow->base + DP_COM_CONF);

 writel(0, flow->base + DP_FG_POS);
 ipu_srm_dp_update(priv->ipu, sync);

 mutex_unlock(&priv->mutex);
}
