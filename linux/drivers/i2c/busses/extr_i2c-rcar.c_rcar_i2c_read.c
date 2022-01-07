
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_i2c_priv {scalar_t__ io; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 rcar_i2c_read(struct rcar_i2c_priv *priv, int reg)
{
 return readl(priv->io + reg);
}
