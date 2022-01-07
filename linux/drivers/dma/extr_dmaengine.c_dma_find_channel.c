
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
typedef enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;
struct TYPE_2__ {int chan; } ;


 TYPE_1__** channel_table ;
 struct dma_chan* this_cpu_read (int ) ;

struct dma_chan *dma_find_channel(enum dma_transaction_type tx_type)
{
 return this_cpu_read(channel_table[tx_type]->chan);
}
