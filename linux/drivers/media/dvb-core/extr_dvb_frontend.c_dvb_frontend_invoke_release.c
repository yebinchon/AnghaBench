
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int dvb_detach (void (*) (struct dvb_frontend*)) ;

__attribute__((used)) static void dvb_frontend_invoke_release(struct dvb_frontend *fe,
     void (*release)(struct dvb_frontend *fe))
{
 if (release) {
  release(fe);



 }
}
