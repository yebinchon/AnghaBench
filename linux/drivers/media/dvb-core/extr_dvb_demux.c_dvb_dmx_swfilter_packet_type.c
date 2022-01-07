
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int secbufp; int seclen; int is_filtering; } ;
struct TYPE_10__ {int is_filtering; } ;
struct TYPE_9__ {TYPE_3__ sec; TYPE_5__ ts; } ;
struct TYPE_6__ {int (* ts ) (int const*,int,int *,int ,TYPE_5__*,int *) ;} ;
struct dvb_demux_feed {int type; int ts_type; TYPE_4__ feed; TYPE_2__* demux; int buffer_flags; TYPE_1__ cb; } ;
struct TYPE_7__ {int (* write_to_decoder ) (struct dvb_demux_feed*,int const*,int) ;} ;




 int TS_DECODER ;
 int TS_PACKET ;
 int TS_PAYLOAD_ONLY ;
 int dvb_dmx_swfilter_payload (struct dvb_demux_feed*,int const*) ;
 int dvb_dmx_swfilter_section_packet (struct dvb_demux_feed*,int const*) ;
 int stub1 (int const*,int,int *,int ,TYPE_5__*,int *) ;
 int stub2 (struct dvb_demux_feed*,int const*,int) ;

__attribute__((used)) static inline void dvb_dmx_swfilter_packet_type(struct dvb_demux_feed *feed,
      const u8 *buf)
{
 switch (feed->type) {
 case 128:
  if (!feed->feed.ts.is_filtering)
   break;
  if (feed->ts_type & TS_PACKET) {
   if (feed->ts_type & TS_PAYLOAD_ONLY)
    dvb_dmx_swfilter_payload(feed, buf);
   else
    feed->cb.ts(buf, 188, ((void*)0), 0, &feed->feed.ts,
         &feed->buffer_flags);
  }

  if (feed->ts_type & TS_DECODER)
   if (feed->demux->write_to_decoder)
    feed->demux->write_to_decoder(feed, buf, 188);
  break;

 case 129:
  if (!feed->feed.sec.is_filtering)
   break;
  if (dvb_dmx_swfilter_section_packet(feed, buf) < 0)
   feed->feed.sec.seclen = feed->feed.sec.secbufp = 0;
  break;

 default:
  break;
 }
}
