
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct mvebu_gpio_chip {int dummy; } ;


 int mvebu_gpioreg_edge_mask (struct mvebu_gpio_chip*,struct regmap**,unsigned int*) ;
 int regmap_read (struct regmap*,unsigned int,int *) ;

__attribute__((used)) static u32
mvebu_gpio_read_edge_mask(struct mvebu_gpio_chip *mvchip)
{
 struct regmap *map;
 unsigned int offset;
 u32 val;

 mvebu_gpioreg_edge_mask(mvchip, &map, &offset);
 regmap_read(map, offset, &val);

 return val;
}
