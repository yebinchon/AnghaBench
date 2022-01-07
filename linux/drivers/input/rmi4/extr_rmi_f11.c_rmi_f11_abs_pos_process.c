
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rmi_2d_sensor_abs_object {int mt_tool; size_t x; size_t y; size_t z; size_t wx; size_t wy; int type; } ;
struct rmi_2d_sensor {int dummy; } ;
struct f11_2d_data {size_t* abs_pos; } ;
struct f11_data {struct f11_2d_data data; } ;
typedef enum f11_finger_state { ____Placeholder_f11_finger_state } f11_finger_state ;



 int MT_TOOL_FINGER ;
 int RMI_2D_OBJECT_FINGER ;
 int RMI_2D_OBJECT_NONE ;
 size_t RMI_F11_ABS_BYTES ;
 int rmi_2d_sensor_abs_process (struct rmi_2d_sensor*,struct rmi_2d_sensor_abs_object*,size_t) ;

__attribute__((used)) static void rmi_f11_abs_pos_process(struct f11_data *f11,
       struct rmi_2d_sensor *sensor,
       struct rmi_2d_sensor_abs_object *obj,
       enum f11_finger_state finger_state,
       u8 n_finger)
{
 struct f11_2d_data *data = &f11->data;
 u8 *pos_data = &data->abs_pos[n_finger * RMI_F11_ABS_BYTES];
 int tool_type = MT_TOOL_FINGER;

 switch (finger_state) {
 case 128:
  obj->type = RMI_2D_OBJECT_FINGER;
  break;
 default:
  obj->type = RMI_2D_OBJECT_NONE;
 }

 obj->mt_tool = tool_type;
 obj->x = (pos_data[0] << 4) | (pos_data[2] & 0x0F);
 obj->y = (pos_data[1] << 4) | (pos_data[2] >> 4);
 obj->z = pos_data[4];
 obj->wx = pos_data[3] & 0x0f;
 obj->wy = pos_data[3] >> 4;

 rmi_2d_sensor_abs_process(sensor, obj, n_finger);
}
