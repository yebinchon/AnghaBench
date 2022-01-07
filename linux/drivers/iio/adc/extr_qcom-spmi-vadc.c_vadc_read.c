
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct vadc_priv {scalar_t__ base; int regmap; } ;


 int regmap_bulk_read (int ,scalar_t__,int *,int) ;

__attribute__((used)) static int vadc_read(struct vadc_priv *vadc, u16 offset, u8 *data)
{
 return regmap_bulk_read(vadc->regmap, vadc->base + offset, data, 1);
}
