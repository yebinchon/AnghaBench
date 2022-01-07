
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_demux_feed {int cc; int pusi_seen; } ;


 int DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED ;
 int DMX_BUFFER_FLAG_DISCONTINUITY_INDICATOR ;
 int dprintk_sect_loss (char*,int,...) ;
 int dvb_dmx_swfilter_section_copy_dump (struct dvb_demux_feed*,int const*,int) ;
 int dvb_dmx_swfilter_section_new (struct dvb_demux_feed*) ;
 int payload (int const*) ;
 int set_buf_flags (struct dvb_demux_feed*,int ) ;

__attribute__((used)) static int dvb_dmx_swfilter_section_packet(struct dvb_demux_feed *feed,
        const u8 *buf)
{
 u8 p, count;
 int ccok, dc_i = 0;
 u8 cc;

 count = payload(buf);

 if (count == 0)
  return -1;

 p = 188 - count;

 cc = buf[3] & 0x0f;
 ccok = ((feed->cc + 1) & 0x0f) == cc;
 feed->cc = cc;

 if (buf[3] & 0x20) {

  if ((buf[4] > 0) && (buf[5] & 0x80))
   dc_i = 1;
 }

 if (!ccok || dc_i) {
  if (dc_i) {
   set_buf_flags(feed,
          DMX_BUFFER_FLAG_DISCONTINUITY_INDICATOR);
   dprintk_sect_loss("%d frame with disconnect indicator\n",
    cc);
  } else {
   set_buf_flags(feed,
          DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
   dprintk_sect_loss("discontinuity: %d instead of %d. %d bytes lost\n",
    cc, (feed->cc + 1) & 0x0f, count + 4);
  }
  feed->pusi_seen = 0;
  dvb_dmx_swfilter_section_new(feed);
 }

 if (buf[1] & 0x40) {

  if (count > 1 && buf[p] < count) {
   const u8 *before = &buf[p + 1];
   u8 before_len = buf[p];
   const u8 *after = &before[before_len];
   u8 after_len = count - 1 - before_len;

   dvb_dmx_swfilter_section_copy_dump(feed, before,
          before_len);

   feed->pusi_seen = 1;
   dvb_dmx_swfilter_section_new(feed);
   dvb_dmx_swfilter_section_copy_dump(feed, after,
          after_len);
  } else if (count > 0) {
   set_buf_flags(feed,
          DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
   dprintk_sect_loss("PUSI=1 but %d bytes lost\n", count);
  }
 } else {

  dvb_dmx_swfilter_section_copy_dump(feed, &buf[p], count);
 }

 return 0;
}
