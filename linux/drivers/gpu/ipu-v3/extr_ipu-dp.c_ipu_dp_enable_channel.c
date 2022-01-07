
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int mutex; int ipu; } ;
struct ipu_dp {int foreground; } ;


 scalar_t__ DP_COM_CONF ;
 int DP_COM_CONF_FG_EN ;
 int ipu_srm_dp_update (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 struct ipu_flow* to_flow (struct ipu_dp*) ;
 int writel (int ,scalar_t__) ;

int ipu_dp_enable_channel(struct ipu_dp *dp)
{
 struct ipu_flow *flow = to_flow(dp);
 struct ipu_dp_priv *priv = flow->priv;
 u32 reg;

 if (!dp->foreground)
  return 0;

 mutex_lock(&priv->mutex);

 reg = readl(flow->base + DP_COM_CONF);
 reg |= DP_COM_CONF_FG_EN;
 writel(reg, flow->base + DP_COM_CONF);

 ipu_srm_dp_update(priv->ipu, 1);

 mutex_unlock(&priv->mutex);

 return 0;
}
