
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int drx39xxj_set_powerstate (struct dvb_frontend*,int ) ;

__attribute__((used)) static int drx39xxj_sleep(struct dvb_frontend *fe)
{

 return drx39xxj_set_powerstate(fe, 0);
}
