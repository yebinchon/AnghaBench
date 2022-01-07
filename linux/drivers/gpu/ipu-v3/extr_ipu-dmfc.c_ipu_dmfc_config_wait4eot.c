
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_dmfc_priv {int mutex; scalar_t__ base; } ;
struct dmfc_channel {int slots; TYPE_1__* data; struct ipu_dmfc_priv* priv; } ;
struct TYPE_2__ {int max_fifo_lines; int eot_shift; } ;


 scalar_t__ DMFC_GENERAL1 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void ipu_dmfc_config_wait4eot(struct dmfc_channel *dmfc, int width)
{
 struct ipu_dmfc_priv *priv = dmfc->priv;
 u32 dmfc_gen1;

 mutex_lock(&priv->mutex);

 dmfc_gen1 = readl(priv->base + DMFC_GENERAL1);

 if ((dmfc->slots * 64 * 4) / width > dmfc->data->max_fifo_lines)
  dmfc_gen1 |= 1 << dmfc->data->eot_shift;
 else
  dmfc_gen1 &= ~(1 << dmfc->data->eot_shift);

 writel(dmfc_gen1, priv->base + DMFC_GENERAL1);

 mutex_unlock(&priv->mutex);
}
