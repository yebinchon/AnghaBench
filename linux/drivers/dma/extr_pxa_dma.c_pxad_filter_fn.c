
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pxad_param {int prio; int drcmr; } ;
struct pxad_chan {int prio; int drcmr; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_6__ {int driver; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int * driver; } ;


 TYPE_3__ pxad_driver ;
 struct pxad_chan* to_pxad_chan (struct dma_chan*) ;

__attribute__((used)) static bool pxad_filter_fn(struct dma_chan *chan, void *param)
{
 struct pxad_chan *c = to_pxad_chan(chan);
 struct pxad_param *p = param;

 if (chan->device->dev->driver != &pxad_driver.driver)
  return 0;

 c->drcmr = p->drcmr;
 c->prio = p->prio;

 return 1;
}
