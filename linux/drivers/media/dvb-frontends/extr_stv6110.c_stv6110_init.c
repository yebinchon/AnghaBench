
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv6110_priv {int* regs; int mclk; int clk_div; } ;
struct dvb_frontend {struct stv6110_priv* tuner_priv; } ;


 size_t RSTV6110_CTRL1 ;
 size_t RSTV6110_CTRL2 ;
 int memcpy (int*,int*,int) ;
 int msleep (int) ;
 int stv6110_set_bandwidth (struct dvb_frontend*,int) ;
 int stv6110_write_regs (struct dvb_frontend*,int*,size_t,int) ;

__attribute__((used)) static int stv6110_init(struct dvb_frontend *fe)
{
 struct stv6110_priv *priv = fe->tuner_priv;
 u8 buf0[] = { 0x07, 0x11, 0xdc, 0x85, 0x17, 0x01, 0xe6, 0x1e };

 memcpy(priv->regs, buf0, 8);

 priv->regs[RSTV6110_CTRL1] &= ~(0x1f << 3);
 priv->regs[RSTV6110_CTRL1] |=
    ((((priv->mclk / 1000000) - 16) & 0x1f) << 3);


 priv->regs[RSTV6110_CTRL2] &= ~0xc0;
 priv->regs[RSTV6110_CTRL2] |= (priv->clk_div << 6);

 stv6110_write_regs(fe, &priv->regs[RSTV6110_CTRL1], RSTV6110_CTRL1, 8);
 msleep(1);
 stv6110_set_bandwidth(fe, 72000000);

 return 0;
}
