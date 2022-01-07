
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct st_lsm6dsx_shub_settings {int shub_out; int slv0_addr; } ;
struct st_lsm6dsx_sensor {int dummy; } ;
struct st_lsm6dsx_hw {int * iio_devs; TYPE_1__* settings; } ;
struct TYPE_4__ {int addr; int val; } ;
struct st_lsm6dsx_ext_dev_settings {int* i2c_addr; TYPE_2__ wai; } ;
typedef int data ;
typedef int config ;
struct TYPE_3__ {struct st_lsm6dsx_shub_settings shub_settings; } ;


 int ARRAY_SIZE (int*) ;
 int ENODEV ;
 size_t ST_LSM6DSX_ID_ACC ;
 int ST_LSM6DSX_SLV_ADDR (int ,int ) ;
 struct st_lsm6dsx_sensor* iio_priv (int ) ;
 int memset (int*,int ,int) ;
 int st_lsm6dsx_shub_master_enable (struct st_lsm6dsx_sensor*,int) ;
 int st_lsm6dsx_shub_read_reg (struct st_lsm6dsx_hw*,int ,int*,int) ;
 int st_lsm6dsx_shub_wait_complete (struct st_lsm6dsx_hw*) ;
 int st_lsm6dsx_shub_write_reg (struct st_lsm6dsx_hw*,int,int*,int) ;

__attribute__((used)) static int
st_lsm6dsx_shub_check_wai(struct st_lsm6dsx_hw *hw, u8 *i2c_addr,
     const struct st_lsm6dsx_ext_dev_settings *settings)
{
 const struct st_lsm6dsx_shub_settings *hub_settings;
 struct st_lsm6dsx_sensor *sensor;
 u8 config[3], data, slv_addr;
 bool found = 0;
 int i, err;

 hub_settings = &hw->settings->shub_settings;
 slv_addr = ST_LSM6DSX_SLV_ADDR(0, hub_settings->slv0_addr);
 sensor = iio_priv(hw->iio_devs[ST_LSM6DSX_ID_ACC]);

 for (i = 0; i < ARRAY_SIZE(settings->i2c_addr); i++) {
  if (!settings->i2c_addr[i])
   continue;


  config[0] = (settings->i2c_addr[i] << 1) | 0x1;
  config[1] = settings->wai.addr;
  config[2] = 0x1;

  err = st_lsm6dsx_shub_write_reg(hw, slv_addr, config,
      sizeof(config));
  if (err < 0)
   return err;

  err = st_lsm6dsx_shub_master_enable(sensor, 1);
  if (err < 0)
   return err;

  st_lsm6dsx_shub_wait_complete(hw);

  err = st_lsm6dsx_shub_read_reg(hw,
            hub_settings->shub_out,
            &data, sizeof(data));

  st_lsm6dsx_shub_master_enable(sensor, 0);

  if (err < 0)
   return err;

  if (data != settings->wai.val)
   continue;

  *i2c_addr = settings->i2c_addr[i];
  found = 1;
  break;
 }


 memset(config, 0, sizeof(config));
 err = st_lsm6dsx_shub_write_reg(hw, slv_addr, config,
     sizeof(config));
 if (err < 0)
  return err;

 return found ? 0 : -ENODEV;
}
