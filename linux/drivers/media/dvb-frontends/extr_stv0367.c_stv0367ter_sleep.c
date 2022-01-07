
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int stv0367ter_standby (struct dvb_frontend*,int) ;

__attribute__((used)) static int stv0367ter_sleep(struct dvb_frontend *fe)
{
 return stv0367ter_standby(fe, 1);
}
