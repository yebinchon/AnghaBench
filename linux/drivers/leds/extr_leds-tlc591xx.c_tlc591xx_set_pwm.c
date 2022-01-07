
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlc591xx_priv {int regmap; } ;
struct tlc591xx_led {int led_no; } ;


 int TLC591XX_REG_PWM (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int
tlc591xx_set_pwm(struct tlc591xx_priv *priv, struct tlc591xx_led *led,
   u8 brightness)
{
 u8 pwm = TLC591XX_REG_PWM(led->led_no);

 return regmap_write(priv->regmap, pwm, brightness);
}
