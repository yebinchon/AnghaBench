
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_prg_channel {size_t used_pre; } ;
struct ipu_prg {int * pres; struct ipu_prg_channel* chan; } ;


 int ipu_pre_put (int ) ;

__attribute__((used)) static void ipu_prg_put_pre(struct ipu_prg *prg, int prg_chan)
{
 struct ipu_prg_channel *chan = &prg->chan[prg_chan];

 ipu_pre_put(prg->pres[chan->used_pre]);
 chan->used_pre = -1;
}
