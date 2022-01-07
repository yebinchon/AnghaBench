
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux {int mutex; } ;
struct dmx_demux {int * frontend; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvbdmx_disconnect_frontend(struct dmx_demux *demux)
{
 struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;

 mutex_lock(&dvbdemux->mutex);

 demux->frontend = ((void*)0);
 mutex_unlock(&dvbdemux->mutex);
 return 0;
}
