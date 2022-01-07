
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr121_touchkey {unsigned char keycount; } ;
struct mpr121_init_register {int addr; unsigned char val; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (struct mpr121_init_register*) ;
 int AUTO_CONFIG_LSL_ADDR ;
 int AUTO_CONFIG_TL_ADDR ;
 int AUTO_CONFIG_USL_ADDR ;
 int ELE0_TOUCH_THRESHOLD_ADDR ;
 int ELECTRODE_CONF_ADDR ;
 unsigned char ELECTRODE_CONF_QUICK_CHARGE ;
 int MPR121_MAX_KEY_COUNT ;
 unsigned char RELEASE_THRESHOLD ;
 unsigned char TOUCH_THRESHOLD ;
 int dev_dbg (int *,char*,unsigned char) ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,unsigned char) ;
 struct mpr121_init_register* init_reg_table ;

__attribute__((used)) static int mpr121_phys_init(struct mpr121_touchkey *mpr121,
       struct i2c_client *client, int vdd_uv)
{
 const struct mpr121_init_register *reg;
 unsigned char usl, lsl, tl, eleconf;
 int i, t, vdd, ret;


 for (i = 0; i <= MPR121_MAX_KEY_COUNT; i++) {
  t = ELE0_TOUCH_THRESHOLD_ADDR + (i * 2);
  ret = i2c_smbus_write_byte_data(client, t, TOUCH_THRESHOLD);
  if (ret < 0)
   goto err_i2c_write;
  ret = i2c_smbus_write_byte_data(client, t + 1,
      RELEASE_THRESHOLD);
  if (ret < 0)
   goto err_i2c_write;
 }


 for (i = 0; i < ARRAY_SIZE(init_reg_table); i++) {
  reg = &init_reg_table[i];
  ret = i2c_smbus_write_byte_data(client, reg->addr, reg->val);
  if (ret < 0)
   goto err_i2c_write;
 }







 vdd = vdd_uv / 1000;
 usl = ((vdd - 700) * 256) / vdd;
 lsl = (usl * 65) / 100;
 tl = (usl * 90) / 100;
 ret = i2c_smbus_write_byte_data(client, AUTO_CONFIG_USL_ADDR, usl);
 ret |= i2c_smbus_write_byte_data(client, AUTO_CONFIG_LSL_ADDR, lsl);
 ret |= i2c_smbus_write_byte_data(client, AUTO_CONFIG_TL_ADDR, tl);






 eleconf = mpr121->keycount | ELECTRODE_CONF_QUICK_CHARGE;
 ret |= i2c_smbus_write_byte_data(client, ELECTRODE_CONF_ADDR,
      eleconf);
 if (ret != 0)
  goto err_i2c_write;

 dev_dbg(&client->dev, "set up with %x keys.\n", mpr121->keycount);

 return 0;

err_i2c_write:
 dev_err(&client->dev, "i2c write error: %d\n", ret);
 return ret;
}
