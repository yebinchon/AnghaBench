
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_mdma_chan {int busy; TYPE_1__* desc; } ;
struct TYPE_4__ {int node; } ;
struct TYPE_3__ {TYPE_2__ vdesc; } ;


 int list_del (int *) ;
 int stm32_mdma_start_transfer (struct stm32_mdma_chan*) ;
 int vchan_cookie_complete (TYPE_2__*) ;

__attribute__((used)) static void stm32_mdma_xfer_end(struct stm32_mdma_chan *chan)
{
 list_del(&chan->desc->vdesc.node);
 vchan_cookie_complete(&chan->desc->vdesc);
 chan->desc = ((void*)0);
 chan->busy = 0;


 stm32_mdma_start_transfer(chan);
}
