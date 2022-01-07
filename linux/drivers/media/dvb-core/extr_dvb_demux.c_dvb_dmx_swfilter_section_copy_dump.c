
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct dmx_section_feed {scalar_t__ tsfeedp; scalar_t__ secbuf_base; scalar_t__ secbuf; scalar_t__ secbufp; int crc_val; scalar_t__ seclen; } ;
struct TYPE_2__ {struct dmx_section_feed sec; } ;
struct dvb_demux_feed {scalar_t__ pusi_seen; TYPE_1__ feed; struct dvb_demux* demux; } ;
struct dvb_demux {int (* memcopy ) (struct dvb_demux_feed*,scalar_t__,scalar_t__ const*,scalar_t__) ;} ;


 int DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED ;
 scalar_t__ DMX_MAX_SECFEED_SIZE ;
 scalar_t__ DMX_MAX_SECTION_SIZE ;
 int dprintk_sect_loss (char*,...) ;
 int dvb_dmx_swfilter_section_feed (struct dvb_demux_feed*) ;
 scalar_t__ section_length (scalar_t__) ;
 int set_buf_flags (struct dvb_demux_feed*,int ) ;
 int stub1 (struct dvb_demux_feed*,scalar_t__,scalar_t__ const*,scalar_t__) ;

__attribute__((used)) static int dvb_dmx_swfilter_section_copy_dump(struct dvb_demux_feed *feed,
           const u8 *buf, u8 len)
{
 struct dvb_demux *demux = feed->demux;
 struct dmx_section_feed *sec = &feed->feed.sec;
 u16 limit, seclen, n;

 if (sec->tsfeedp >= DMX_MAX_SECFEED_SIZE)
  return 0;

 if (sec->tsfeedp + len > DMX_MAX_SECFEED_SIZE) {
  set_buf_flags(feed, DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
  dprintk_sect_loss("section buffer full loss: %d/%d\n",
      sec->tsfeedp + len - DMX_MAX_SECFEED_SIZE,
      DMX_MAX_SECFEED_SIZE);
  len = DMX_MAX_SECFEED_SIZE - sec->tsfeedp;
 }

 if (len <= 0)
  return 0;

 demux->memcopy(feed, sec->secbuf_base + sec->tsfeedp, buf, len);
 sec->tsfeedp += len;




 limit = sec->tsfeedp;
 if (limit > DMX_MAX_SECFEED_SIZE)
  return -1;


 sec->secbuf = sec->secbuf_base + sec->secbufp;

 for (n = 0; sec->secbufp + 2 < limit; n++) {
  seclen = section_length(sec->secbuf);
  if (seclen <= 0 || seclen > DMX_MAX_SECTION_SIZE
      || seclen + sec->secbufp > limit)
   return 0;
  sec->seclen = seclen;
  sec->crc_val = ~0;

  if (feed->pusi_seen) {
   dvb_dmx_swfilter_section_feed(feed);
  } else {
   set_buf_flags(feed,
          DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
   dprintk_sect_loss("pusi not seen, discarding section data\n");
  }
  sec->secbufp += seclen;
  sec->secbuf += seclen;
 }

 return 0;
}
