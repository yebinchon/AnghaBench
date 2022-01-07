
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int anx78xx_clear_bits(struct regmap *map, u8 reg, u8 mask)
{
 return regmap_update_bits(map, reg, mask, 0);
}
