
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlp9xx_i2c_dev {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void xlp9xx_write_i2c_reg(struct xlp9xx_i2c_dev *priv,
     unsigned long reg, u32 val)
{
 writel(val, priv->base + reg);
}
