
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int threadio; } ;
struct vb2_dvb {int nfeeds; int lock; int name; TYPE_2__ dvbq; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_3__ {int frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct vb2_dvb* priv; } ;


 int EINVAL ;
 int dvb_fnc ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_thread_start (TYPE_2__*,int ,struct vb2_dvb*,int ) ;

__attribute__((used)) static int vb2_dvb_start_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct vb2_dvb *dvb = demux->priv;
 int rc = 0;

 if (!demux->dmx.frontend)
  return -EINVAL;

 mutex_lock(&dvb->lock);
 dvb->nfeeds++;

 if (!dvb->dvbq.threadio) {
  rc = vb2_thread_start(&dvb->dvbq, dvb_fnc, dvb, dvb->name);
  if (rc)
   dvb->nfeeds--;
 }
 if (!rc)
  rc = dvb->nfeeds;
 mutex_unlock(&dvb->lock);
 return rc;
}
