
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int mutex; int ipu; } ;
struct ipu_dp {int dummy; } ;


 scalar_t__ DP_COM_CONF ;
 int DP_COM_CONF_GWAM ;
 int DP_COM_CONF_GWSEL ;
 scalar_t__ DP_GRAPH_WIND_CTRL ;
 int ipu_srm_dp_update (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 struct ipu_flow* to_flow (struct ipu_dp*) ;
 int writel (int,scalar_t__) ;

int ipu_dp_set_global_alpha(struct ipu_dp *dp, bool enable,
  u8 alpha, bool bg_chan)
{
 struct ipu_flow *flow = to_flow(dp);
 struct ipu_dp_priv *priv = flow->priv;
 u32 reg;

 mutex_lock(&priv->mutex);

 reg = readl(flow->base + DP_COM_CONF);
 if (bg_chan)
  reg &= ~DP_COM_CONF_GWSEL;
 else
  reg |= DP_COM_CONF_GWSEL;
 writel(reg, flow->base + DP_COM_CONF);

 if (enable) {
  reg = readl(flow->base + DP_GRAPH_WIND_CTRL) & 0x00FFFFFFL;
  writel(reg | ((u32) alpha << 24),
        flow->base + DP_GRAPH_WIND_CTRL);

  reg = readl(flow->base + DP_COM_CONF);
  writel(reg | DP_COM_CONF_GWAM, flow->base + DP_COM_CONF);
 } else {
  reg = readl(flow->base + DP_COM_CONF);
  writel(reg & ~DP_COM_CONF_GWAM, flow->base + DP_COM_CONF);
 }

 ipu_srm_dp_update(priv->ipu, 1);

 mutex_unlock(&priv->mutex);

 return 0;
}
