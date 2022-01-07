
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend_private {int dvbdev; } ;
struct TYPE_2__ {int release; } ;
struct dvb_frontend {TYPE_1__ ops; struct dvb_frontend_private* frontend_priv; } ;


 int dvb_free_device (int ) ;
 int dvb_frontend_invoke_release (struct dvb_frontend*,int ) ;
 int kfree (struct dvb_frontend_private*) ;

__attribute__((used)) static void __dvb_frontend_free(struct dvb_frontend *fe)
{
 struct dvb_frontend_private *fepriv = fe->frontend_priv;

 if (fepriv)
  dvb_free_device(fepriv->dvbdev);

 dvb_frontend_invoke_release(fe, fe->ops.release);

 kfree(fepriv);
}
