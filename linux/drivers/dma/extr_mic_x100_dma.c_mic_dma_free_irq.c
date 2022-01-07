
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_dma_chan {int cookie; } ;
struct TYPE_2__ {int (* free_irq ) (int ,int ,struct mic_dma_chan*) ;} ;


 int stub1 (int ,int ,struct mic_dma_chan*) ;
 int to_mbus_device (struct mic_dma_chan*) ;
 TYPE_1__* to_mbus_hw_ops (struct mic_dma_chan*) ;

__attribute__((used)) static inline void mic_dma_free_irq(struct mic_dma_chan *ch)
{
 to_mbus_hw_ops(ch)->free_irq(to_mbus_device(ch), ch->cookie, ch);
}
