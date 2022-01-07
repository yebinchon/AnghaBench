
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ts; } ;
struct TYPE_3__ {int (* ts ) (int const*,int,int *,int ,int *,int *) ;} ;
struct dvb_demux_feed {int cc; int peslen; int buffer_flags; TYPE_2__ feed; TYPE_1__ cb; } ;


 int DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED ;
 int dprintk_sect_loss (char*,int,int) ;
 int payload (int const*) ;
 int set_buf_flags (struct dvb_demux_feed*,int ) ;
 int stub1 (int const*,int,int *,int ,int *,int *) ;

__attribute__((used)) static inline int dvb_dmx_swfilter_payload(struct dvb_demux_feed *feed,
        const u8 *buf)
{
 int count = payload(buf);
 int p;
 int ccok;
 u8 cc;

 if (count == 0)
  return -1;

 p = 188 - count;

 cc = buf[3] & 0x0f;
 ccok = ((feed->cc + 1) & 0x0f) == cc;
 feed->cc = cc;
 if (!ccok) {
  set_buf_flags(feed, DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
  dprintk_sect_loss("missed packet: %d instead of %d!\n",
      cc, (feed->cc + 1) & 0x0f);
 }

 if (buf[1] & 0x40)
  feed->peslen = 0xfffa;

 feed->peslen += count;

 return feed->cb.ts(&buf[p], count, ((void*)0), 0, &feed->feed.ts,
      &feed->buffer_flags);
}
