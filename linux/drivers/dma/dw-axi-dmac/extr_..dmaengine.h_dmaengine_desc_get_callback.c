
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaengine_desc_callback {int callback_param; int callback_result; int callback; } ;
struct dma_async_tx_descriptor {int callback_param; int callback_result; int callback; } ;



__attribute__((used)) static inline void
dmaengine_desc_get_callback(struct dma_async_tx_descriptor *tx,
       struct dmaengine_desc_callback *cb)
{
 cb->callback = tx->callback;
 cb->callback_result = tx->callback_result;
 cb->callback_param = tx->callback_param;
}
