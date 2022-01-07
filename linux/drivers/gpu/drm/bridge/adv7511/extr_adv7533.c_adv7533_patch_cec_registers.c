
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int regmap_cec; } ;


 int ARRAY_SIZE (int ) ;
 int adv7533_cec_fixed_registers ;
 int regmap_register_patch (int ,int ,int ) ;

int adv7533_patch_cec_registers(struct adv7511 *adv)
{
 return regmap_register_patch(adv->regmap_cec,
        adv7533_cec_fixed_registers,
        ARRAY_SIZE(adv7533_cec_fixed_registers));
}
