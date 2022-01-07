
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int name; } ;
struct wf_fcu_fan {int min; int max; TYPE_1__ ctrl; } ;
struct mpu_data {int processor_part_num; } ;


 int CPU_PUMP_OUTPUT_MAX ;
 int CPU_PUMP_OUTPUT_MIN ;
 int DBG (char*,int ,int,int) ;
 int max (int,int) ;
 int memcpy (int**,int ,int) ;
 int min (int,int) ;
 struct mpu_data* wf_get_mpu (int ) ;

__attribute__((used)) static void wf_fcu_get_pump_minmax(struct wf_fcu_fan *fan)
{
 const struct mpu_data *mpu = wf_get_mpu(0);
 u16 pump_min = 0, pump_max = 0xffff;
 u16 tmp[4];


 if (mpu) {
  memcpy(&tmp, mpu->processor_part_num, 8);
  if (tmp[0] != 0xffff && tmp[1] != 0xffff) {
   pump_min = max(pump_min, tmp[0]);
   pump_max = min(pump_max, tmp[1]);
  }
  if (tmp[2] != 0xffff && tmp[3] != 0xffff) {
   pump_min = max(pump_min, tmp[2]);
   pump_max = min(pump_max, tmp[3]);
  }
 }





 if (pump_min == pump_max || pump_min == 0 || pump_max == 0xffff) {
  pump_min = CPU_PUMP_OUTPUT_MIN;
  pump_max = CPU_PUMP_OUTPUT_MAX;
 }

 fan->min = pump_min;
 fan->max = pump_max;

 DBG("wf_fcu: pump min/max for %s set to: [%d..%d] RPM\n",
     fan->ctrl.name, pump_min, pump_max);
}
