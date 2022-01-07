
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noa1305_priv {int regmap; } ;


 int EINVAL ;
 int IIO_VAL_FRACTIONAL ;
 int NOA1305_REG_INTEGRATION_TIME ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int noa1305_scale(struct noa1305_priv *priv, int *val, int *val2)
{
 int data;
 int ret;

 ret = regmap_read(priv->regmap, NOA1305_REG_INTEGRATION_TIME, &data);
 if (ret < 0)
  return ret;







 switch (data) {
 case 128:
  *val = 100;
  *val2 = 77 * 8;
  break;
 case 131:
  *val = 100;
  *val2 = 77 * 4;
  break;
 case 133:
  *val = 100;
  *val2 = 77 * 2;
  break;
 case 135:
  *val = 100;
  *val2 = 77;
  break;
 case 130:
  *val = 1000;
  *val2 = 77 * 5;
  break;
 case 132:
  *val = 10000;
  *val2 = 77 * 25;
  break;
 case 134:
  *val = 100000;
  *val2 = 77 * 125;
  break;
 case 129:
  *val = 1000000;
  *val2 = 77 * 625;
  break;
 default:
  return -EINVAL;
 }

 return IIO_VAL_FRACTIONAL;
}
