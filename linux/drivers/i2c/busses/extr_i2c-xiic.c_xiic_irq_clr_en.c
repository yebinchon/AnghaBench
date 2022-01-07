
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xiic_i2c {int dummy; } ;


 int xiic_irq_clr (struct xiic_i2c*,int ) ;
 int xiic_irq_en (struct xiic_i2c*,int ) ;

__attribute__((used)) static inline void xiic_irq_clr_en(struct xiic_i2c *i2c, u32 mask)
{
 xiic_irq_clr(i2c, mask);
 xiic_irq_en(i2c, mask);
}
