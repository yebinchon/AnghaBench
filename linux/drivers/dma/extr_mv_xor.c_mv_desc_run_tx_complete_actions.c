
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cookie; } ;
struct mv_xor_desc_slot {TYPE_1__ async_tx; } ;
struct mv_xor_chan {int dummy; } ;
typedef scalar_t__ dma_cookie_t ;


 int BUG_ON (int) ;
 int dma_descriptor_unmap (TYPE_1__*) ;
 int dma_run_dependencies (TYPE_1__*) ;
 int dmaengine_desc_get_callback_invoke (TYPE_1__*,int *) ;

__attribute__((used)) static dma_cookie_t
mv_desc_run_tx_complete_actions(struct mv_xor_desc_slot *desc,
    struct mv_xor_chan *mv_chan,
    dma_cookie_t cookie)
{
 BUG_ON(desc->async_tx.cookie < 0);

 if (desc->async_tx.cookie > 0) {
  cookie = desc->async_tx.cookie;

  dma_descriptor_unmap(&desc->async_tx);



  dmaengine_desc_get_callback_invoke(&desc->async_tx, ((void*)0));
 }


 dma_run_dependencies(&desc->async_tx);

 return cookie;
}
