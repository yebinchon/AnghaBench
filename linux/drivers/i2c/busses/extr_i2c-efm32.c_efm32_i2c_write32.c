
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efm32_i2c_ddata {unsigned int base; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static void efm32_i2c_write32(struct efm32_i2c_ddata *ddata,
  unsigned offset, u32 value)
{
 writel(value, ddata->base + offset);
}
