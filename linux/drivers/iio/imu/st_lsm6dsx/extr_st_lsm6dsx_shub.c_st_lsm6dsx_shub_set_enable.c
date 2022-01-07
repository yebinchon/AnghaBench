
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {struct st_lsm6dsx_ext_dev_settings* settings; } ;
struct st_lsm6dsx_sensor {int odr; TYPE_1__ ext_info; } ;
struct TYPE_9__ {int mask; scalar_t__ addr; } ;
struct TYPE_10__ {TYPE_4__ reg; int off_val; int on_val; } ;
struct TYPE_7__ {int mask; scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_2__ reg; } ;
struct st_lsm6dsx_ext_dev_settings {TYPE_5__ pwr_table; TYPE_3__ odr_table; } ;


 int st_lsm6dsx_shub_config_channels (struct st_lsm6dsx_sensor*,int) ;
 int st_lsm6dsx_shub_master_enable (struct st_lsm6dsx_sensor*,int) ;
 int st_lsm6dsx_shub_set_odr (struct st_lsm6dsx_sensor*,int ) ;
 int st_lsm6dsx_shub_write_with_mask (struct st_lsm6dsx_sensor*,scalar_t__,int ,int ) ;

int st_lsm6dsx_shub_set_enable(struct st_lsm6dsx_sensor *sensor, bool enable)
{
 const struct st_lsm6dsx_ext_dev_settings *settings;
 int err;

 err = st_lsm6dsx_shub_config_channels(sensor, enable);
 if (err < 0)
  return err;

 settings = sensor->ext_info.settings;
 if (enable) {
  err = st_lsm6dsx_shub_set_odr(sensor, sensor->odr);
  if (err < 0)
   return err;
 } else {
  err = st_lsm6dsx_shub_write_with_mask(sensor,
     settings->odr_table.reg.addr,
     settings->odr_table.reg.mask, 0);
  if (err < 0)
   return err;
 }

 if (settings->pwr_table.reg.addr) {
  u8 val;

  val = enable ? settings->pwr_table.on_val
        : settings->pwr_table.off_val;
  err = st_lsm6dsx_shub_write_with_mask(sensor,
     settings->pwr_table.reg.addr,
     settings->pwr_table.reg.mask, val);
  if (err < 0)
   return err;
 }

 return st_lsm6dsx_shub_master_enable(sensor, enable);
}
