
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* detach ) (struct dvb_frontend*) ;} ;
struct dvb_frontend {int refcount; scalar_t__ frontend_priv; TYPE_1__ ops; } ;


 int __dvb_frontend_free (struct dvb_frontend*) ;
 int dvb_frontend_free ;
 int kref_put (int *,int ) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static void dvb_frontend_put(struct dvb_frontend *fe)
{

 if (fe->ops.detach)
  fe->ops.detach(fe);




 if (fe->frontend_priv)
  kref_put(&fe->refcount, dvb_frontend_free);
 else
  __dvb_frontend_free(fe);
}
