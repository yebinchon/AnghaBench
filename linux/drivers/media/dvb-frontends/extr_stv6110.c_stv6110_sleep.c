
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {int dummy; } ;


 int stv6110_write_regs (struct dvb_frontend*,int *,int ,int) ;

__attribute__((used)) static int stv6110_sleep(struct dvb_frontend *fe)
{
 u8 reg[] = { 0 };
 stv6110_write_regs(fe, reg, 0, 1);

 return 0;
}
