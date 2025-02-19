
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int sensor_num; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct cros_ec_sensors_core_state {scalar_t__ type; TYPE_2__ param; } ;


 int CROS_EC_SENSOR_MAX_AXIS ;
 unsigned int EC_MEMMAP_ACC_DATA ;
 unsigned int EC_MEMMAP_GYRO_DATA ;
 scalar_t__ MOTIONSENSE_TYPE_ACCEL ;

__attribute__((used)) static unsigned int cros_ec_sensors_idx_to_reg(
     struct cros_ec_sensors_core_state *st,
     unsigned int idx)
{




 if (st->type == MOTIONSENSE_TYPE_ACCEL)
  return EC_MEMMAP_ACC_DATA + sizeof(u16) *
   (1 + idx + st->param.info.sensor_num *
    CROS_EC_SENSOR_MAX_AXIS);

 return EC_MEMMAP_GYRO_DATA + sizeof(u16) * idx;
}
