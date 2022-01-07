
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dvb_demux {struct list_head frontend_list; } ;
struct dmx_demux {int dummy; } ;


 scalar_t__ list_empty (struct list_head*) ;

__attribute__((used)) static struct list_head *dvbdmx_get_frontends(struct dmx_demux *demux)
{
 struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;

 if (list_empty(&dvbdemux->frontend_list))
  return ((void*)0);

 return &dvbdemux->frontend_list;
}
