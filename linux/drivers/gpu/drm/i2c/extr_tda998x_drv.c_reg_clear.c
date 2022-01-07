
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tda998x_priv {int dummy; } ;


 int reg_read (struct tda998x_priv*,int ) ;
 int reg_write (struct tda998x_priv*,int ,int) ;

__attribute__((used)) static void
reg_clear(struct tda998x_priv *priv, u16 reg, u8 val)
{
 int old_val;

 old_val = reg_read(priv, reg);
 if (old_val >= 0)
  reg_write(priv, reg, old_val & ~val);
}
