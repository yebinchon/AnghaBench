
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adv7511 {int regmap; } ;


 int ADV7511_REG_AUDIO_CFG1 ;
 int ADV7511_REG_AUDIO_CONFIG ;
 int ADV7511_REG_GC (int) ;
 int ADV7511_REG_INFOFRAME_UPDATE ;
 int ADV7511_REG_PACKET_ENABLE1 ;
 int BIT (int) ;
 struct adv7511* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int audio_startup(struct device *dev, void *data)
{
 struct adv7511 *adv7511 = dev_get_drvdata(dev);

 regmap_update_bits(adv7511->regmap, ADV7511_REG_AUDIO_CONFIG,
    BIT(7), 0);


 regmap_update_bits(adv7511->regmap, ADV7511_REG_INFOFRAME_UPDATE,
    BIT(5), BIT(5));

 regmap_update_bits(adv7511->regmap, ADV7511_REG_PACKET_ENABLE1,
    BIT(5), BIT(5));

 regmap_update_bits(adv7511->regmap, ADV7511_REG_PACKET_ENABLE1,
    BIT(6), BIT(6));

 regmap_update_bits(adv7511->regmap, ADV7511_REG_AUDIO_CFG1,
    BIT(5), BIT(5));

 regmap_update_bits(adv7511->regmap, ADV7511_REG_PACKET_ENABLE1,
    BIT(3), BIT(3));

 regmap_update_bits(adv7511->regmap, ADV7511_REG_GC(0),
    BIT(7) | BIT(6), BIT(7));

 regmap_update_bits(adv7511->regmap, ADV7511_REG_GC(1),
    BIT(5), 0);
 return 0;
}
