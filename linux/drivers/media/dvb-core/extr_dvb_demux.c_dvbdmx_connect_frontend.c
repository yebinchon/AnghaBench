
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_demux {int mutex; } ;
struct dmx_frontend {int dummy; } ;
struct dmx_demux {struct dmx_frontend* frontend; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dvbdmx_connect_frontend(struct dmx_demux *demux,
       struct dmx_frontend *frontend)
{
 struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;

 if (demux->frontend)
  return -EINVAL;

 mutex_lock(&dvbdemux->mutex);

 demux->frontend = frontend;
 mutex_unlock(&dvbdemux->mutex);
 return 0;
}
