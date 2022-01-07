
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct adc5_chip {scalar_t__ base; int regmap; } ;


 int regmap_bulk_write (int ,scalar_t__,int *,int) ;

__attribute__((used)) static int adc5_write(struct adc5_chip *adc, u16 offset, u8 *data, int len)
{
 return regmap_bulk_write(adc->regmap, adc->base + offset, data, len);
}
