
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct mvebu_gpio_chip {int dummy; } ;


 int mvebu_gpioreg_edge_mask (struct mvebu_gpio_chip*,struct regmap**,unsigned int*) ;
 int regmap_write (struct regmap*,unsigned int,int ) ;

__attribute__((used)) static void
mvebu_gpio_write_edge_mask(struct mvebu_gpio_chip *mvchip, u32 val)
{
 struct regmap *map;
 unsigned int offset;

 mvebu_gpioreg_edge_mask(mvchip, &map, &offset);
 regmap_write(map, offset, val);
}
