
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_i2c_priv {scalar_t__ io; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rcar_i2c_write(struct rcar_i2c_priv *priv, int reg, u32 val)
{
 writel(val, priv->io + reg);
}
