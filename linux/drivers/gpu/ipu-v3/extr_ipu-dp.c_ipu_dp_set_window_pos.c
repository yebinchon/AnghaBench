
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipu_flow {scalar_t__ base; struct ipu_dp_priv* priv; } ;
struct ipu_dp_priv {int ipu; } ;
struct ipu_dp {int dummy; } ;


 scalar_t__ DP_FG_POS ;
 int ipu_srm_dp_update (int ,int) ;
 struct ipu_flow* to_flow (struct ipu_dp*) ;
 int writel (int,scalar_t__) ;

int ipu_dp_set_window_pos(struct ipu_dp *dp, u16 x_pos, u16 y_pos)
{
 struct ipu_flow *flow = to_flow(dp);
 struct ipu_dp_priv *priv = flow->priv;

 writel((x_pos << 16) | y_pos, flow->base + DP_FG_POS);

 ipu_srm_dp_update(priv->ipu, 1);

 return 0;
}
