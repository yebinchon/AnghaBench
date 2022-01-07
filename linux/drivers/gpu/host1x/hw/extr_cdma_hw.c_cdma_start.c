
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct host1x_channel {int dummy; } ;
struct TYPE_2__ {int pos; scalar_t__ size; scalar_t__ dma; } ;
struct host1x_cdma {int running; int last_pos; TYPE_1__ push_buffer; } ;


 int HOST1X_CHANNEL_DMACTRL ;
 int HOST1X_CHANNEL_DMACTRL_DMAGETRST ;
 int HOST1X_CHANNEL_DMACTRL_DMAINITGET ;
 int HOST1X_CHANNEL_DMACTRL_DMASTOP ;
 int HOST1X_CHANNEL_DMAEND ;
 int HOST1X_CHANNEL_DMAEND_HI ;
 int HOST1X_CHANNEL_DMAPUT ;
 int HOST1X_CHANNEL_DMAPUT_HI ;
 int HOST1X_CHANNEL_DMASTART ;
 int HOST1X_CHANNEL_DMASTART_HI ;
 struct host1x_channel* cdma_to_channel (struct host1x_cdma*) ;
 int host1x_ch_writel (struct host1x_channel*,int,int ) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void cdma_start(struct host1x_cdma *cdma)
{
 struct host1x_channel *ch = cdma_to_channel(cdma);
 u64 start, end;

 if (cdma->running)
  return;

 cdma->last_pos = cdma->push_buffer.pos;
 start = cdma->push_buffer.dma;
 end = cdma->push_buffer.size + 4;

 host1x_ch_writel(ch, HOST1X_CHANNEL_DMACTRL_DMASTOP,
    HOST1X_CHANNEL_DMACTRL);


 host1x_ch_writel(ch, lower_32_bits(start), HOST1X_CHANNEL_DMASTART);



 host1x_ch_writel(ch, cdma->push_buffer.pos, HOST1X_CHANNEL_DMAPUT);



 host1x_ch_writel(ch, lower_32_bits(end), HOST1X_CHANNEL_DMAEND);





 host1x_ch_writel(ch, HOST1X_CHANNEL_DMACTRL_DMASTOP |
    HOST1X_CHANNEL_DMACTRL_DMAGETRST |
    HOST1X_CHANNEL_DMACTRL_DMAINITGET,
    HOST1X_CHANNEL_DMACTRL);


 host1x_ch_writel(ch, 0, HOST1X_CHANNEL_DMACTRL);

 cdma->running = 1;
}
