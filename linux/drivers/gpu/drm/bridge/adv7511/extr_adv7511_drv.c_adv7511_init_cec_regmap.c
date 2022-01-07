
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {scalar_t__ type; int i2c_cec; int regmap_cec; int i2c_main; } ;


 int ADV7511_CEC_I2C_ADDR_DEFAULT ;
 scalar_t__ ADV7533 ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adv7511_cec_regmap_config ;
 int adv7533_patch_cec_registers (struct adv7511*) ;
 int devm_regmap_init_i2c (int ,int *) ;
 int i2c_new_ancillary_device (int ,char*,int ) ;
 int i2c_set_clientdata (int ,struct adv7511*) ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static int adv7511_init_cec_regmap(struct adv7511 *adv)
{
 int ret;

 adv->i2c_cec = i2c_new_ancillary_device(adv->i2c_main, "cec",
      ADV7511_CEC_I2C_ADDR_DEFAULT);
 if (IS_ERR(adv->i2c_cec))
  return PTR_ERR(adv->i2c_cec);
 i2c_set_clientdata(adv->i2c_cec, adv);

 adv->regmap_cec = devm_regmap_init_i2c(adv->i2c_cec,
     &adv7511_cec_regmap_config);
 if (IS_ERR(adv->regmap_cec)) {
  ret = PTR_ERR(adv->regmap_cec);
  goto err;
 }

 if (adv->type == ADV7533) {
  ret = adv7533_patch_cec_registers(adv);
  if (ret)
   goto err;
 }

 return 0;
err:
 i2c_unregister_device(adv->i2c_cec);
 return ret;
}
