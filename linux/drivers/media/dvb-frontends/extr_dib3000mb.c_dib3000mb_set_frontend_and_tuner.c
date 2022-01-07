
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int dib3000mb_set_frontend (struct dvb_frontend*,int) ;

__attribute__((used)) static int dib3000mb_set_frontend_and_tuner(struct dvb_frontend *fe)
{
 return dib3000mb_set_frontend(fe, 1);
}
