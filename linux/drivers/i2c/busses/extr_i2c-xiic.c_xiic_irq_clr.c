
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xiic_i2c {int dummy; } ;


 int XIIC_IISR_OFFSET ;
 int xiic_getreg32 (struct xiic_i2c*,int ) ;
 int xiic_setreg32 (struct xiic_i2c*,int ,int) ;

__attribute__((used)) static inline void xiic_irq_clr(struct xiic_i2c *i2c, u32 mask)
{
 u32 isr = xiic_getreg32(i2c, XIIC_IISR_OFFSET);
 xiic_setreg32(i2c, XIIC_IISR_OFFSET, isr & mask);
}
