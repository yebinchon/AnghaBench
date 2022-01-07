
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ prod; int if_clk_freq; } ;


 scalar_t__ LGS8GXX_PROD_LGS8G75 ;
 int dprintk (char*,int) ;
 int lgs8gxx_read_reg (struct lgs8gxx_state*,int,int*) ;

__attribute__((used)) static int lgs8gxx_get_afc_phase(struct lgs8gxx_state *priv)
{
 u64 val;
 u32 v32 = 0;
 u8 reg_addr, t;
 int i;

 if (priv->config->prod == LGS8GXX_PROD_LGS8G75)
  reg_addr = 0x23;
 else
  reg_addr = 0x48;

 for (i = 0; i < 4; i++) {
  lgs8gxx_read_reg(priv, reg_addr, &t);
  v32 <<= 8;
  v32 |= t;
  reg_addr--;
 }

 val = v32;
 val *= priv->config->if_clk_freq;
 val >>= 32;
 dprintk("AFC = %u kHz\n", (u32)val);
 return 0;
}
