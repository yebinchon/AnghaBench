
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct iadc_chip {scalar_t__ base; int regmap; } ;


 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static int iadc_write(struct iadc_chip *iadc, u16 offset, u8 data)
{
 return regmap_write(iadc->regmap, iadc->base + offset, data);
}
