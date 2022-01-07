
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fs_avl; } ;
struct st_sensor_settings {TYPE_2__ fs; } ;
struct TYPE_3__ {unsigned int num; } ;


 int EINVAL ;
 int ST_SENSORS_FULLSCALE_AVL_MAX ;

__attribute__((used)) static int st_sensors_match_fs(struct st_sensor_settings *sensor_settings,
     unsigned int fs, int *index_fs_avl)
{
 int i, ret = -EINVAL;

 for (i = 0; i < ST_SENSORS_FULLSCALE_AVL_MAX; i++) {
  if (sensor_settings->fs.fs_avl[i].num == 0)
   return ret;

  if (sensor_settings->fs.fs_avl[i].num == fs) {
   *index_fs_avl = i;
   ret = 0;
   break;
  }
 }

 return ret;
}
