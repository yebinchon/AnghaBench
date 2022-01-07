
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int s5h1411_set_powerstate (struct dvb_frontend*,int) ;

__attribute__((used)) static int s5h1411_sleep(struct dvb_frontend *fe)
{
 return s5h1411_set_powerstate(fe, 1);
}
