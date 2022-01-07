
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_dma_chan {int cookie; int ch_num; } ;
struct TYPE_2__ {int (* request_threaded_irq ) (int ,int ,int ,char*,struct mic_dma_chan*,int ) ;} ;


 int PTR_ERR_OR_ZERO (int ) ;
 int mic_dma_intr_handler ;
 int mic_dma_thread_fn ;
 int stub1 (int ,int ,int ,char*,struct mic_dma_chan*,int ) ;
 int to_mbus_device (struct mic_dma_chan*) ;
 TYPE_1__* to_mbus_hw_ops (struct mic_dma_chan*) ;

__attribute__((used)) static int mic_dma_setup_irq(struct mic_dma_chan *ch)
{
 ch->cookie =
  to_mbus_hw_ops(ch)->request_threaded_irq(to_mbus_device(ch),
   mic_dma_intr_handler, mic_dma_thread_fn,
   "mic dma_channel", ch, ch->ch_num);
 return PTR_ERR_OR_ZERO(ch->cookie);
}
