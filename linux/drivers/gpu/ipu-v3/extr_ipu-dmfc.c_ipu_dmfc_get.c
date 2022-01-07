
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_soc {struct ipu_dmfc_priv* dmfc_priv; } ;
struct ipu_dmfc_priv {struct dmfc_channel* channels; } ;
struct dmfc_channel {int dummy; } ;
struct TYPE_2__ {int ipu_channel; } ;


 int DMFC_NUM_CHANNELS ;
 int ENODEV ;
 struct dmfc_channel* ERR_PTR (int ) ;
 TYPE_1__* dmfcdata ;

struct dmfc_channel *ipu_dmfc_get(struct ipu_soc *ipu, int ipu_channel)
{
 struct ipu_dmfc_priv *priv = ipu->dmfc_priv;
 int i;

 for (i = 0; i < DMFC_NUM_CHANNELS; i++)
  if (dmfcdata[i].ipu_channel == ipu_channel)
   return &priv->channels[i];
 return ERR_PTR(-ENODEV);
}
