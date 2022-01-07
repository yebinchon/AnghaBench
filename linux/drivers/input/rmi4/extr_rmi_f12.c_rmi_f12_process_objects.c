
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rmi_2d_sensor_abs_object {int x; int y; int z; int wx; int wy; int type; int mt_tool; } ;
struct rmi_2d_sensor {struct rmi_2d_sensor_abs_object* objs; int dmax; int nbr_fingers; int tracking_pos; int tracking_slots; int input; scalar_t__ kernel_tracking; } ;
struct f12_data {TYPE_1__* data1; struct rmi_2d_sensor sensor; } ;
struct TYPE_2__ {int num_subpackets; } ;


 int F12_DATA1_BYTES_PER_OBJ ;
 int MT_TOOL_FINGER ;
 int MT_TOOL_PALM ;
 int MT_TOOL_PEN ;
 int RMI_2D_OBJECT_FINGER ;
 int RMI_2D_OBJECT_NONE ;
 int RMI_2D_OBJECT_PALM ;
 int RMI_2D_OBJECT_STYLUS ;
 int RMI_2D_OBJECT_UNCLASSIFIED ;




 int input_mt_assign_slots (int ,int ,int ,int ,int ) ;
 int rmi_2d_sensor_abs_process (struct rmi_2d_sensor*,struct rmi_2d_sensor_abs_object*,int) ;
 int rmi_2d_sensor_abs_report (struct rmi_2d_sensor*,struct rmi_2d_sensor_abs_object*,int) ;

__attribute__((used)) static void rmi_f12_process_objects(struct f12_data *f12, u8 *data1, int size)
{
 int i;
 struct rmi_2d_sensor *sensor = &f12->sensor;
 int objects = f12->data1->num_subpackets;

 if ((f12->data1->num_subpackets * F12_DATA1_BYTES_PER_OBJ) > size)
  objects = size / F12_DATA1_BYTES_PER_OBJ;

 for (i = 0; i < objects; i++) {
  struct rmi_2d_sensor_abs_object *obj = &sensor->objs[i];

  obj->type = RMI_2D_OBJECT_NONE;
  obj->mt_tool = MT_TOOL_FINGER;

  switch (data1[0]) {
  case 131:
   obj->type = RMI_2D_OBJECT_FINGER;
   break;
  case 129:
   obj->type = RMI_2D_OBJECT_STYLUS;
   obj->mt_tool = MT_TOOL_PEN;
   break;
  case 130:
   obj->type = RMI_2D_OBJECT_PALM;
   obj->mt_tool = MT_TOOL_PALM;
   break;
  case 128:
   obj->type = RMI_2D_OBJECT_UNCLASSIFIED;
   break;
  }

  obj->x = (data1[2] << 8) | data1[1];
  obj->y = (data1[4] << 8) | data1[3];
  obj->z = data1[5];
  obj->wx = data1[6];
  obj->wy = data1[7];

  rmi_2d_sensor_abs_process(sensor, obj, i);

  data1 += F12_DATA1_BYTES_PER_OBJ;
 }

 if (sensor->kernel_tracking)
  input_mt_assign_slots(sensor->input,
          sensor->tracking_slots,
          sensor->tracking_pos,
          sensor->nbr_fingers,
          sensor->dmax);

 for (i = 0; i < objects; i++)
  rmi_2d_sensor_abs_report(sensor, &sensor->objs[i], i);
}
