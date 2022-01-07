
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_private {int sem; } ;
struct dvb_fe_events {scalar_t__ eventw; scalar_t__ eventr; } ;


 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static int dvb_frontend_test_event(struct dvb_frontend_private *fepriv,
       struct dvb_fe_events *events)
{
 int ret;

 up(&fepriv->sem);
 ret = events->eventw != events->eventr;
 down(&fepriv->sem);

 return ret;
}
