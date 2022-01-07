
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_private {scalar_t__ wakeup; } ;
struct dvb_frontend {struct dvb_frontend_private* frontend_priv; } ;


 int dvb_frontend_is_exiting (struct dvb_frontend*) ;

__attribute__((used)) static int dvb_frontend_should_wakeup(struct dvb_frontend *fe)
{
 struct dvb_frontend_private *fepriv = fe->frontend_priv;

 if (fepriv->wakeup) {
  fepriv->wakeup = 0;
  return 1;
 }
 return dvb_frontend_is_exiting(fe);
}
