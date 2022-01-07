
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv6110_priv {int* regs; } ;
struct dvb_frontend {struct stv6110_priv* tuner_priv; } ;


 size_t RSTV6110_CTRL3 ;
 int stv6110_read_regs (struct dvb_frontend*,int*,int ,int) ;

__attribute__((used)) static int stv6110_get_bandwidth(struct dvb_frontend *fe, u32 *bandwidth)
{
 struct stv6110_priv *priv = fe->tuner_priv;
 u8 r8 = 0;
 u8 regs[] = { 0, 0, 0, 0, 0, 0, 0, 0 };
 stv6110_read_regs(fe, regs, 0, 8);


 r8 = priv->regs[RSTV6110_CTRL3] & 0x1f;
 *bandwidth = (r8 + 5) * 2000000;

 return 0;
}
