
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cc10001_adc_device {scalar_t__ reg_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cc10001_adc_write_reg(struct cc10001_adc_device *adc_dev,
      u32 reg, u32 val)
{
 writel(val, adc_dev->reg_base + reg);
}
