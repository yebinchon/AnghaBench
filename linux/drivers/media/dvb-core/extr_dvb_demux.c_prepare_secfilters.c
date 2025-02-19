
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dmx_section_filter {int* filter_mode; int* filter_mask; } ;
struct dvb_demux_filter {int* maskandmode; int* maskandnotmode; int doneq; struct dmx_section_filter filter; struct dvb_demux_filter* next; } ;
struct dvb_demux_feed {struct dvb_demux_filter* filter; } ;


 int DVB_DEMUX_MASK_MAX ;

__attribute__((used)) static void prepare_secfilters(struct dvb_demux_feed *dvbdmxfeed)
{
 int i;
 struct dvb_demux_filter *f;
 struct dmx_section_filter *sf;
 u8 mask, mode, doneq;

 if (!(f = dvbdmxfeed->filter))
  return;
 do {
  sf = &f->filter;
  doneq = 0;
  for (i = 0; i < DVB_DEMUX_MASK_MAX; i++) {
   mode = sf->filter_mode[i];
   mask = sf->filter_mask[i];
   f->maskandmode[i] = mask & mode;
   doneq |= f->maskandnotmode[i] = mask & ~mode;
  }
  f->doneq = doneq ? 1 : 0;
 } while ((f = f->next));
}
