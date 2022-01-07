
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_demux {int dummy; } ;


 int _dvb_dmx_swfilter (struct dvb_demux*,int const*,size_t,int) ;

void dvb_dmx_swfilter(struct dvb_demux *demux, const u8 *buf, size_t count)
{
 _dvb_dmx_swfilter(demux, buf, count, 188);
}
