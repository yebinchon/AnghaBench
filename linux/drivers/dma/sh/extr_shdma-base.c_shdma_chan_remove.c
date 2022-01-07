
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_node; } ;
struct shdma_chan {TYPE_1__ dma_chan; } ;


 int list_del (int *) ;

void shdma_chan_remove(struct shdma_chan *schan)
{
 list_del(&schan->dma_chan.device_node);
}
