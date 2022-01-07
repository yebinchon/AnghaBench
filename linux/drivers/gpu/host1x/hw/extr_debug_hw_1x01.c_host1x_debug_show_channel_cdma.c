
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct output {int dummy; } ;
struct TYPE_2__ {int mapped; } ;
struct host1x_cdma {TYPE_1__ push_buffer; } ;
struct host1x_channel {struct host1x_cdma cdma; int dev; int id; } ;
struct host1x {int dummy; } ;


 int HOST1X_CHANNEL_DMACTRL ;
 scalar_t__ HOST1X_CHANNEL_DMACTRL_DMASTOP_V (int) ;
 int HOST1X_CHANNEL_DMAGET ;
 int HOST1X_CHANNEL_DMAPUT ;
 int HOST1X_CLASS_HOST1X ;
 int HOST1X_SYNC_CBREAD (int ) ;
 int HOST1X_SYNC_CBSTAT (int ) ;
 int HOST1X_SYNC_CBSTAT_CBCLASS_V (int) ;
 int HOST1X_SYNC_CBSTAT_CBOFFSET_V (int) ;
 int HOST1X_SYNC_SYNCPT_BASE (int) ;
 int HOST1X_UCLASS_WAIT_SYNCPT ;
 int HOST1X_UCLASS_WAIT_SYNCPT_BASE ;
 int dev_name (int ) ;
 int host1x_ch_readl (struct host1x_channel*,int ) ;
 int host1x_debug_output (struct output*,char*,...) ;
 int host1x_sync_readl (struct host1x*,int ) ;
 int show_channel_gathers (struct output*,struct host1x_cdma*) ;

__attribute__((used)) static void host1x_debug_show_channel_cdma(struct host1x *host,
        struct host1x_channel *ch,
        struct output *o)
{
 struct host1x_cdma *cdma = &ch->cdma;
 u32 dmaput, dmaget, dmactrl;
 u32 cbstat, cbread;
 u32 val, base, baseval;

 dmaput = host1x_ch_readl(ch, HOST1X_CHANNEL_DMAPUT);
 dmaget = host1x_ch_readl(ch, HOST1X_CHANNEL_DMAGET);
 dmactrl = host1x_ch_readl(ch, HOST1X_CHANNEL_DMACTRL);
 cbread = host1x_sync_readl(host, HOST1X_SYNC_CBREAD(ch->id));
 cbstat = host1x_sync_readl(host, HOST1X_SYNC_CBSTAT(ch->id));

 host1x_debug_output(o, "%u-%s: ", ch->id, dev_name(ch->dev));

 if (HOST1X_CHANNEL_DMACTRL_DMASTOP_V(dmactrl) ||
     !ch->cdma.push_buffer.mapped) {
  host1x_debug_output(o, "inactive\n\n");
  return;
 }

 if (HOST1X_SYNC_CBSTAT_CBCLASS_V(cbstat) == HOST1X_CLASS_HOST1X &&
     HOST1X_SYNC_CBSTAT_CBOFFSET_V(cbstat) ==
   HOST1X_UCLASS_WAIT_SYNCPT)
  host1x_debug_output(o, "waiting on syncpt %d val %d\n",
        cbread >> 24, cbread & 0xffffff);
 else if (HOST1X_SYNC_CBSTAT_CBCLASS_V(cbstat) ==
    HOST1X_CLASS_HOST1X &&
   HOST1X_SYNC_CBSTAT_CBOFFSET_V(cbstat) ==
    HOST1X_UCLASS_WAIT_SYNCPT_BASE) {
  base = (cbread >> 16) & 0xff;
  baseval =
   host1x_sync_readl(host, HOST1X_SYNC_SYNCPT_BASE(base));
  val = cbread & 0xffff;
  host1x_debug_output(o, "waiting on syncpt %d val %d (base %d = %d; offset = %d)\n",
        cbread >> 24, baseval + val, base,
        baseval, val);
 } else
  host1x_debug_output(o, "active class %02x, offset %04x, val %08x\n",
        HOST1X_SYNC_CBSTAT_CBCLASS_V(cbstat),
        HOST1X_SYNC_CBSTAT_CBOFFSET_V(cbstat),
        cbread);

 host1x_debug_output(o, "DMAPUT %08x, DMAGET %08x, DMACTL %08x\n",
       dmaput, dmaget, dmactrl);
 host1x_debug_output(o, "CBREAD %08x, CBSTAT %08x\n", cbread, cbstat);

 show_channel_gathers(o, cdma);
 host1x_debug_output(o, "\n");
}
