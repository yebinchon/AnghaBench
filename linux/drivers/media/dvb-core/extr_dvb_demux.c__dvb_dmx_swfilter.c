
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_demux {int tsbufp; int* tsbuf; int lock; } ;


 int dvb_dmx_swfilter_packet (struct dvb_demux*,int const*) ;
 int find_next_packet (int const*,int,size_t,int const) ;
 int memcpy (int*,int const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void _dvb_dmx_swfilter(struct dvb_demux *demux, const u8 *buf,
  size_t count, const int pktsize)
{
 int p = 0, i, j;
 const u8 *q;
 unsigned long flags;

 spin_lock_irqsave(&demux->lock, flags);

 if (demux->tsbufp) {
  i = demux->tsbufp;
  j = pktsize - i;
  if (count < j) {
   memcpy(&demux->tsbuf[i], buf, count);
   demux->tsbufp += count;
   goto bailout;
  }
  memcpy(&demux->tsbuf[i], buf, j);
  if (demux->tsbuf[0] == 0x47)
   dvb_dmx_swfilter_packet(demux, demux->tsbuf);
  demux->tsbufp = 0;
  p += j;
 }

 while (1) {
  p = find_next_packet(buf, p, count, pktsize);
  if (p >= count)
   break;
  if (count - p < pktsize)
   break;

  q = &buf[p];

  if (pktsize == 204 && (*q == 0xB8)) {
   memcpy(demux->tsbuf, q, 188);
   demux->tsbuf[0] = 0x47;
   q = demux->tsbuf;
  }
  dvb_dmx_swfilter_packet(demux, q);
  p += pktsize;
 }

 i = count - p;
 if (i) {
  memcpy(demux->tsbuf, &buf[p], i);
  demux->tsbufp = i;
  if (pktsize == 204 && demux->tsbuf[0] == 0xB8)
   demux->tsbuf[0] = 0x47;
 }

bailout:
 spin_unlock_irqrestore(&demux->lock, flags);
}
