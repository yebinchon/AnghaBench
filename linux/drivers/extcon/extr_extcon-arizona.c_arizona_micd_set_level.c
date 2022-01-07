
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int regmap; } ;


 int ARIZONA_MIC_DETECT_LEVEL_4 ;
 int regmap_update_bits (int ,int,unsigned int,unsigned int) ;

__attribute__((used)) static void arizona_micd_set_level(struct arizona *arizona, int index,
       unsigned int level)
{
 int reg;
 unsigned int mask;

 reg = ARIZONA_MIC_DETECT_LEVEL_4 - (index / 2);

 if (!(index % 2)) {
  mask = 0x3f00;
  level <<= 8;
 } else {
  mask = 0x3f;
 }


 regmap_update_bits(arizona->regmap, reg, mask, level);
}
