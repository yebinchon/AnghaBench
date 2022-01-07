
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vibra_info {int enabled; } ;


 int TWL4030_AUDIO_RES_APLL ;
 int TWL4030_AUDIO_RES_POWER ;
 int TWL4030_MODULE_AUDIO_VOICE ;
 int TWL4030_REG_VIBRA_CTL ;
 int TWL4030_VIBRA_EN ;
 int twl4030_audio_disable_resource (int ) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static void vibra_disable(struct vibra_info *info)
{
 u8 reg;


 twl_i2c_read_u8(TWL4030_MODULE_AUDIO_VOICE,
   &reg, TWL4030_REG_VIBRA_CTL);
 twl_i2c_write_u8(TWL4030_MODULE_AUDIO_VOICE,
    (reg & ~TWL4030_VIBRA_EN), TWL4030_REG_VIBRA_CTL);

 twl4030_audio_disable_resource(TWL4030_AUDIO_RES_APLL);
 twl4030_audio_disable_resource(TWL4030_AUDIO_RES_POWER);

 info->enabled = 0;
}
