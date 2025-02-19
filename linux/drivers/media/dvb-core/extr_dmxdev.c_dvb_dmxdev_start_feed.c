
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dmx_pes_filter_params {int output; int pes_type; } ;
struct TYPE_5__ {struct dmx_pes_filter_params pes; } ;
struct dmxdev_filter {TYPE_1__ params; } ;
struct dmxdev_feed {int pid; struct dmx_ts_feed* ts; } ;
struct dmxdev {TYPE_2__* demux; } ;
struct dmx_ts_feed {int (* set ) (struct dmx_ts_feed*,int ,int,int,int ) ;int (* start_filtering ) (struct dmx_ts_feed*) ;struct dmxdev_filter* priv; } ;
typedef int ktime_t ;
typedef enum dmx_ts_pes { ____Placeholder_dmx_ts_pes } dmx_ts_pes ;
typedef enum dmx_output { ____Placeholder_dmx_output } dmx_output ;
struct TYPE_6__ {int (* allocate_ts_feed ) (TYPE_2__*,struct dmx_ts_feed**,int ) ;int (* release_ts_feed ) (TYPE_2__*,struct dmx_ts_feed*) ;} ;


 int DMX_OUT_TAP ;
 int DMX_OUT_TSDEMUX_TAP ;
 int DMX_OUT_TS_TAP ;
 int DMX_PES_OTHER ;
 int TS_DECODER ;
 int TS_DEMUX ;
 int TS_PACKET ;
 int TS_PAYLOAD_ONLY ;
 int dvb_dmxdev_ts_callback ;
 int ktime_set (int ,int ) ;
 int stub1 (TYPE_2__*,struct dmx_ts_feed**,int ) ;
 int stub2 (struct dmx_ts_feed*,int ,int,int,int ) ;
 int stub3 (TYPE_2__*,struct dmx_ts_feed*) ;
 int stub4 (struct dmx_ts_feed*) ;
 int stub5 (TYPE_2__*,struct dmx_ts_feed*) ;

__attribute__((used)) static int dvb_dmxdev_start_feed(struct dmxdev *dmxdev,
     struct dmxdev_filter *filter,
     struct dmxdev_feed *feed)
{
 ktime_t timeout = ktime_set(0, 0);
 struct dmx_pes_filter_params *para = &filter->params.pes;
 enum dmx_output otype;
 int ret;
 int ts_type;
 enum dmx_ts_pes ts_pes;
 struct dmx_ts_feed *tsfeed;

 feed->ts = ((void*)0);
 otype = para->output;

 ts_pes = para->pes_type;

 if (ts_pes < DMX_PES_OTHER)
  ts_type = TS_DECODER;
 else
  ts_type = 0;

 if (otype == DMX_OUT_TS_TAP)
  ts_type |= TS_PACKET;
 else if (otype == DMX_OUT_TSDEMUX_TAP)
  ts_type |= TS_PACKET | TS_DEMUX;
 else if (otype == DMX_OUT_TAP)
  ts_type |= TS_PACKET | TS_DEMUX | TS_PAYLOAD_ONLY;

 ret = dmxdev->demux->allocate_ts_feed(dmxdev->demux, &feed->ts,
           dvb_dmxdev_ts_callback);
 if (ret < 0)
  return ret;

 tsfeed = feed->ts;
 tsfeed->priv = filter;

 ret = tsfeed->set(tsfeed, feed->pid, ts_type, ts_pes, timeout);
 if (ret < 0) {
  dmxdev->demux->release_ts_feed(dmxdev->demux, tsfeed);
  return ret;
 }

 ret = tsfeed->start_filtering(tsfeed);
 if (ret < 0) {
  dmxdev->demux->release_ts_feed(dmxdev->demux, tsfeed);
  return ret;
 }

 return 0;
}
