
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct st_lsm6dsx_sensor {size_t id; TYPE_3__* hw; } ;
struct st_lsm6dsx_odr_table_entry {TYPE_1__* odr_avl; } ;
struct TYPE_6__ {TYPE_2__* settings; } ;
struct TYPE_5__ {struct st_lsm6dsx_odr_table_entry* odr_table; } ;
struct TYPE_4__ {scalar_t__ hz; int val; } ;


 int EINVAL ;
 int ST_LSM6DSX_ODR_LIST_SIZE ;

int st_lsm6dsx_check_odr(struct st_lsm6dsx_sensor *sensor, u16 odr, u8 *val)
{
 const struct st_lsm6dsx_odr_table_entry *odr_table;
 int i;

 odr_table = &sensor->hw->settings->odr_table[sensor->id];
 for (i = 0; i < ST_LSM6DSX_ODR_LIST_SIZE; i++)




  if (odr_table->odr_avl[i].hz >= odr)
   break;

 if (i == ST_LSM6DSX_ODR_LIST_SIZE)
  return -EINVAL;

 *val = odr_table->odr_avl[i].val;

 return 0;
}
