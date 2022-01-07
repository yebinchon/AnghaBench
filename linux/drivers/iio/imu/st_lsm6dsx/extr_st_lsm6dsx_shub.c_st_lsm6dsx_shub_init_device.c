
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct st_lsm6dsx_ext_dev_settings* settings; } ;
struct st_lsm6dsx_sensor {TYPE_1__ ext_info; } ;
struct TYPE_8__ {int mask; scalar_t__ addr; } ;
struct TYPE_7__ {int mask; scalar_t__ addr; } ;
struct TYPE_6__ {int mask; scalar_t__ addr; } ;
struct st_lsm6dsx_ext_dev_settings {TYPE_4__ off_canc; TYPE_3__ temp_comp; TYPE_2__ bdu; } ;


 int st_lsm6dsx_shub_write_with_mask (struct st_lsm6dsx_sensor*,scalar_t__,int ,int) ;

__attribute__((used)) static int st_lsm6dsx_shub_init_device(struct st_lsm6dsx_sensor *sensor)
{
 const struct st_lsm6dsx_ext_dev_settings *settings;
 int err;

 settings = sensor->ext_info.settings;
 if (settings->bdu.addr) {
  err = st_lsm6dsx_shub_write_with_mask(sensor,
            settings->bdu.addr,
            settings->bdu.mask, 1);
  if (err < 0)
   return err;
 }

 if (settings->temp_comp.addr) {
  err = st_lsm6dsx_shub_write_with_mask(sensor,
     settings->temp_comp.addr,
     settings->temp_comp.mask, 1);
  if (err < 0)
   return err;
 }

 if (settings->off_canc.addr) {
  err = st_lsm6dsx_shub_write_with_mask(sensor,
     settings->off_canc.addr,
     settings->off_canc.mask, 1);
  if (err < 0)
   return err;
 }

 return 0;
}
