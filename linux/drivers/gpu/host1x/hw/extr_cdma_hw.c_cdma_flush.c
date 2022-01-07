
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_channel {int dummy; } ;
struct TYPE_2__ {int pos; } ;
struct host1x_cdma {TYPE_1__ push_buffer; int last_pos; } ;


 int HOST1X_CHANNEL_DMAPUT ;
 struct host1x_channel* cdma_to_channel (struct host1x_cdma*) ;
 int host1x_ch_writel (struct host1x_channel*,int ,int ) ;

__attribute__((used)) static void cdma_flush(struct host1x_cdma *cdma)
{
 struct host1x_channel *ch = cdma_to_channel(cdma);

 if (cdma->push_buffer.pos != cdma->last_pos) {
  host1x_ch_writel(ch, cdma->push_buffer.pos,
     HOST1X_CHANNEL_DMAPUT);
  cdma->last_pos = cdma->push_buffer.pos;
 }
}
