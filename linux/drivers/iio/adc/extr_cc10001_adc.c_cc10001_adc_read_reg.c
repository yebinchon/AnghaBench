
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cc10001_adc_device {scalar_t__ reg_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 cc10001_adc_read_reg(struct cc10001_adc_device *adc_dev,
           u32 reg)
{
 return readl(adc_dev->reg_base + reg);
}
