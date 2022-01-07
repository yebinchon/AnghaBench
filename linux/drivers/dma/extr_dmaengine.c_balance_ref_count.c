
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct dma_chan {scalar_t__ client_count; } ;


 int __module_get (struct module*) ;
 struct module* dma_chan_to_owner (struct dma_chan*) ;
 scalar_t__ dmaengine_ref_count ;

__attribute__((used)) static void balance_ref_count(struct dma_chan *chan)
{
 struct module *owner = dma_chan_to_owner(chan);

 while (chan->client_count < dmaengine_ref_count) {
  __module_get(owner);
  chan->client_count++;
 }
}
