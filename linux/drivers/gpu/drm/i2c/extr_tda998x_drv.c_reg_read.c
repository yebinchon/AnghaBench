
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u16 ;
struct tda998x_priv {int dummy; } ;


 int reg_read_range (struct tda998x_priv*,int ,int*,int) ;

__attribute__((used)) static int
reg_read(struct tda998x_priv *priv, u16 reg)
{
 u8 val = 0;
 int ret;

 ret = reg_read_range(priv, reg, &val, sizeof(val));
 if (ret < 0)
  return ret;
 return val;
}
