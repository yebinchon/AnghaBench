
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_dvb {scalar_t__ nfeeds; int lock; int dvbq; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct vb2_dvb* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vb2_thread_stop (int *) ;

__attribute__((used)) static int vb2_dvb_stop_feed(struct dvb_demux_feed *feed)
{
 struct dvb_demux *demux = feed->demux;
 struct vb2_dvb *dvb = demux->priv;
 int err = 0;

 mutex_lock(&dvb->lock);
 dvb->nfeeds--;
 if (0 == dvb->nfeeds)
  err = vb2_thread_stop(&dvb->dvbq);
 mutex_unlock(&dvb->lock);
 return err;
}
