
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tda998x_priv {int dummy; } ;


 int REG_CEC_ENAMODS ;
 int cec_read (struct tda998x_priv*,int ) ;
 int cec_write (struct tda998x_priv*,int ,int) ;

__attribute__((used)) static void cec_enamods(struct tda998x_priv *priv, u8 mods, bool enable)
{
 int val = cec_read(priv, REG_CEC_ENAMODS);

 if (val < 0)
  return;

 if (enable)
  val |= mods;
 else
  val &= ~mods;

 cec_write(priv, REG_CEC_ENAMODS, val);
}
