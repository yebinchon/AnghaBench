
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef scalar_t__ u16 ;
struct iadc_chip {scalar_t__ base; int regmap; } ;


 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int iadc_read(struct iadc_chip *iadc, u16 offset, u8 *data)
{
 unsigned int val;
 int ret;

 ret = regmap_read(iadc->regmap, iadc->base + offset, &val);
 if (ret < 0)
  return ret;

 *data = val;
 return 0;
}
