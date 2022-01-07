
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_fe_events {int mtx; int eventw; int eventr; } ;
struct dvb_frontend_private {struct dvb_fe_events events; } ;
struct dvb_frontend {struct dvb_frontend_private* frontend_priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dvb_frontend_clear_events(struct dvb_frontend *fe)
{
 struct dvb_frontend_private *fepriv = fe->frontend_priv;
 struct dvb_fe_events *events = &fepriv->events;

 mutex_lock(&events->mtx);
 events->eventr = events->eventw;
 mutex_unlock(&events->mtx);
}
