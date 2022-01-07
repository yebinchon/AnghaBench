
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_soc {struct ipu_dp_priv* dp_priv; } ;
struct ipu_dp_priv {TYPE_1__* flow; } ;
struct ipu_dp {int in_use; } ;
struct TYPE_2__ {struct ipu_dp background; struct ipu_dp foreground; } ;


 int EBUSY ;
 int EINVAL ;
 struct ipu_dp* ERR_PTR (int ) ;
 unsigned int IPUV3_NUM_FLOWS ;

struct ipu_dp *ipu_dp_get(struct ipu_soc *ipu, unsigned int flow)
{
 struct ipu_dp_priv *priv = ipu->dp_priv;
 struct ipu_dp *dp;

 if ((flow >> 1) >= IPUV3_NUM_FLOWS)
  return ERR_PTR(-EINVAL);

 if (flow & 1)
  dp = &priv->flow[flow >> 1].foreground;
 else
  dp = &priv->flow[flow >> 1].background;

 if (dp->in_use)
  return ERR_PTR(-EBUSY);

 dp->in_use = 1;

 return dp;
}
