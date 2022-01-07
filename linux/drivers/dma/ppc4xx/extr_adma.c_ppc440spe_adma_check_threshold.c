
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ppc440spe_adma_chan {scalar_t__ pending; TYPE_2__* device; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int id; TYPE_1__ common; } ;


 scalar_t__ PPC440SPE_ADMA_THRESHOLD ;
 int dev_dbg (int ,char*,int ,scalar_t__) ;
 int ppc440spe_chan_append (struct ppc440spe_adma_chan*) ;

__attribute__((used)) static void ppc440spe_adma_check_threshold(struct ppc440spe_adma_chan *chan)
{
 dev_dbg(chan->device->common.dev, "ppc440spe adma%d: pending: %d\n",
  chan->device->id, chan->pending);

 if (chan->pending >= PPC440SPE_ADMA_THRESHOLD) {
  chan->pending = 0;
  ppc440spe_chan_append(chan);
 }
}
