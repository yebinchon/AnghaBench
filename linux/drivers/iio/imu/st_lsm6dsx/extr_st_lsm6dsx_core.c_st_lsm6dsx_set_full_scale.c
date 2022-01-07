
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct st_lsm6dsx_sensor {size_t id; scalar_t__ gain; TYPE_4__* hw; } ;
struct TYPE_7__ {int mask; int addr; } ;
struct st_lsm6dsx_fs_table_entry {int fs_len; TYPE_3__ reg; TYPE_2__* fs_avl; } ;
struct TYPE_8__ {TYPE_1__* settings; } ;
struct TYPE_6__ {scalar_t__ gain; int val; } ;
struct TYPE_5__ {struct st_lsm6dsx_fs_table_entry* fs_table; } ;


 int EINVAL ;
 unsigned int ST_LSM6DSX_SHIFT_VAL (int ,int ) ;
 int st_lsm6dsx_update_bits_locked (TYPE_4__*,int ,int ,unsigned int) ;

__attribute__((used)) static int st_lsm6dsx_set_full_scale(struct st_lsm6dsx_sensor *sensor,
         u32 gain)
{
 const struct st_lsm6dsx_fs_table_entry *fs_table;
 unsigned int data;
 int i, err;

 fs_table = &sensor->hw->settings->fs_table[sensor->id];
 for (i = 0; i < fs_table->fs_len; i++) {
  if (fs_table->fs_avl[i].gain == gain)
   break;
 }

 if (i == fs_table->fs_len)
  return -EINVAL;

 data = ST_LSM6DSX_SHIFT_VAL(fs_table->fs_avl[i].val,
        fs_table->reg.mask);
 err = st_lsm6dsx_update_bits_locked(sensor->hw, fs_table->reg.addr,
         fs_table->reg.mask, data);
 if (err < 0)
  return err;

 sensor->gain = gain;

 return 0;
}
