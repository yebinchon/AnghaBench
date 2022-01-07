
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipuv3_channel {TYPE_1__* ipu; int num; } ;
struct ipu_prg_channel {size_t used_pre; int enabled; } ;
struct ipu_prg {int * pres; struct ipu_prg_channel* chan; } ;
struct TYPE_2__ {struct ipu_prg* prg_priv; } ;


 int WARN_ON (int) ;
 int ipu_pre_update_pending (int ) ;
 int ipu_prg_ipu_to_prg_chan (int ) ;

bool ipu_prg_channel_configure_pending(struct ipuv3_channel *ipu_chan)
{
 int prg_chan = ipu_prg_ipu_to_prg_chan(ipu_chan->num);
 struct ipu_prg *prg = ipu_chan->ipu->prg_priv;
 struct ipu_prg_channel *chan;

 if (prg_chan < 0)
  return 0;

 chan = &prg->chan[prg_chan];
 WARN_ON(!chan->enabled);

 return ipu_pre_update_pending(prg->pres[chan->used_pre]);
}
