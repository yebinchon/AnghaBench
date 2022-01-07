
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {int dummy; } ;


 int stv6110_read_regs (struct dvb_frontend*,int*,int,int) ;

__attribute__((used)) static int stv6110_read_reg(struct dvb_frontend *fe, int start)
{
 u8 buf[] = { 0 };
 stv6110_read_regs(fe, buf, start, 1);

 return buf[0];
}
