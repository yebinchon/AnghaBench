
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ prod; } ;


 scalar_t__ LGS8GXX_PROD_LGS8G75 ;
 int lgs8gxx_write_reg (struct lgs8gxx_state*,int,int) ;

__attribute__((used)) static int lgs8g75_set_adc_vpp(struct lgs8gxx_state *priv,
 u8 sel)
{
 u8 r26 = 0x73, r27 = 0x90;

 if (priv->config->prod != LGS8GXX_PROD_LGS8G75)
  return 0;

 r26 |= (sel & 0x01) << 7;
 r27 |= (sel & 0x02) >> 1;
 lgs8gxx_write_reg(priv, 0x26, r26);
 lgs8gxx_write_reg(priv, 0x27, r27);

 return 0;
}
