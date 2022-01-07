
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {struct st_lsm6dsx_ext_dev_settings* settings; } ;
struct st_lsm6dsx_sensor {TYPE_1__ ext_info; } ;
struct TYPE_5__ {TYPE_3__* odr_avl; } ;
struct st_lsm6dsx_ext_dev_settings {TYPE_2__ odr_table; } ;
struct TYPE_6__ {scalar_t__ hz; scalar_t__ val; } ;


 int EINVAL ;
 int ST_LSM6DSX_ODR_LIST_SIZE ;

__attribute__((used)) static int
st_lsm6dsx_shub_get_odr_val(struct st_lsm6dsx_sensor *sensor,
       u16 odr, u16 *val)
{
 const struct st_lsm6dsx_ext_dev_settings *settings;
 int i;

 settings = sensor->ext_info.settings;
 for (i = 0; i < ST_LSM6DSX_ODR_LIST_SIZE; i++)
  if (settings->odr_table.odr_avl[i].hz == odr)
   break;

 if (i == ST_LSM6DSX_ODR_LIST_SIZE)
  return -EINVAL;

 *val = settings->odr_table.odr_avl[i].val;
 return 0;
}
