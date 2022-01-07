
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct tlc591xx_priv {int reg_ledout_offset; int regmap; } ;
struct tlc591xx_led {int led_no; } ;


 unsigned int LEDOUT_MASK ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int
tlc591xx_set_ledout(struct tlc591xx_priv *priv, struct tlc591xx_led *led,
      u8 val)
{
 unsigned int i = (led->led_no % 4) * 2;
 unsigned int mask = LEDOUT_MASK << i;
 unsigned int addr = priv->reg_ledout_offset + (led->led_no >> 2);

 val = val << i;

 return regmap_update_bits(priv->regmap, addr, mask, val);
}
