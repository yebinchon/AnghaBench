
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noa1305_priv {int regmap; } ;
typedef int __le16 ;


 int NOA1305_REG_ALS_DATA_LSB ;
 int le16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int noa1305_measure(struct noa1305_priv *priv)
{
 __le16 data;
 int ret;

 ret = regmap_bulk_read(priv->regmap, NOA1305_REG_ALS_DATA_LSB, &data,
          2);
 if (ret < 0)
  return ret;

 return le16_to_cpu(data);
}
