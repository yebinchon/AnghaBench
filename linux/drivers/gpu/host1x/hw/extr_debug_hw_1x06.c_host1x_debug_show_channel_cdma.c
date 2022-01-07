
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct output {int dummy; } ;
struct TYPE_2__ {int mapped; } ;
struct host1x_cdma {TYPE_1__ push_buffer; } ;
struct host1x_channel {struct host1x_cdma cdma; int dev; int id; } ;
struct host1x {int dummy; } ;


 int HOST1X_CHANNEL_CHANNELSTAT ;
 int HOST1X_CHANNEL_CMDP_CLASS ;
 int HOST1X_CHANNEL_CMDP_OFFSET ;
 int HOST1X_CHANNEL_DMACTRL ;
 scalar_t__ HOST1X_CHANNEL_DMACTRL_DMASTOP ;
 int HOST1X_CHANNEL_DMAGET ;
 int HOST1X_CHANNEL_DMAPUT ;
 scalar_t__ HOST1X_CLASS_HOST1X ;
 scalar_t__ HOST1X_UCLASS_WAIT_SYNCPT ;
 int dev_name (int ) ;
 scalar_t__ host1x_ch_readl (struct host1x_channel*,int ) ;
 int host1x_debug_output (struct output*,char*,...) ;
 int show_channel_gathers (struct output*,struct host1x_cdma*) ;

__attribute__((used)) static void host1x_debug_show_channel_cdma(struct host1x *host,
        struct host1x_channel *ch,
        struct output *o)
{
 struct host1x_cdma *cdma = &ch->cdma;
 u32 dmaput, dmaget, dmactrl;
 u32 offset, class;
 u32 ch_stat;

 dmaput = host1x_ch_readl(ch, HOST1X_CHANNEL_DMAPUT);
 dmaget = host1x_ch_readl(ch, HOST1X_CHANNEL_DMAGET);
 dmactrl = host1x_ch_readl(ch, HOST1X_CHANNEL_DMACTRL);
 offset = host1x_ch_readl(ch, HOST1X_CHANNEL_CMDP_OFFSET);
 class = host1x_ch_readl(ch, HOST1X_CHANNEL_CMDP_CLASS);
 ch_stat = host1x_ch_readl(ch, HOST1X_CHANNEL_CHANNELSTAT);

 host1x_debug_output(o, "%u-%s: ", ch->id, dev_name(ch->dev));

 if (dmactrl & HOST1X_CHANNEL_DMACTRL_DMASTOP ||
     !ch->cdma.push_buffer.mapped) {
  host1x_debug_output(o, "inactive\n\n");
  return;
 }

 if (class == HOST1X_CLASS_HOST1X && offset == HOST1X_UCLASS_WAIT_SYNCPT)
  host1x_debug_output(o, "waiting on syncpt\n");
 else
  host1x_debug_output(o, "active class %02x, offset %04x\n",
        class, offset);

 host1x_debug_output(o, "DMAPUT %08x, DMAGET %08x, DMACTL %08x\n",
       dmaput, dmaget, dmactrl);
 host1x_debug_output(o, "CHANNELSTAT %02x\n", ch_stat);

 show_channel_gathers(o, cdma);
 host1x_debug_output(o, "\n");
}
