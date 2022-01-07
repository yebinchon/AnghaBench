
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_2d_sensor_abs_object {scalar_t__ type; void* y; void* x; } ;
struct rmi_2d_axis_alignment {scalar_t__ clip_y_high; scalar_t__ clip_x_high; int clip_y_low; int clip_x_low; scalar_t__ offset_y; scalar_t__ offset_x; scalar_t__ swap_axes; scalar_t__ flip_y; scalar_t__ flip_x; } ;
struct rmi_2d_sensor {TYPE_1__* tracking_pos; void* max_y; void* max_x; struct rmi_2d_axis_alignment axis_align; } ;
struct TYPE_2__ {void* y; void* x; } ;


 scalar_t__ RMI_2D_OBJECT_NONE ;
 void* max (int ,void*) ;
 void* min (void*,void*) ;
 int swap (void*,void*) ;

void rmi_2d_sensor_abs_process(struct rmi_2d_sensor *sensor,
    struct rmi_2d_sensor_abs_object *obj,
    int slot)
{
 struct rmi_2d_axis_alignment *axis_align = &sensor->axis_align;


 if (obj->type == RMI_2D_OBJECT_NONE)
  return;

 if (axis_align->flip_x)
  obj->x = sensor->max_x - obj->x;

 if (axis_align->flip_y)
  obj->y = sensor->max_y - obj->y;

 if (axis_align->swap_axes)
  swap(obj->x, obj->y);
 obj->x += axis_align->offset_x;
 obj->y += axis_align->offset_y;

 obj->x = max(axis_align->clip_x_low, obj->x);
 obj->y = max(axis_align->clip_y_low, obj->y);

 if (axis_align->clip_x_high)
  obj->x = min(sensor->max_x, obj->x);

 if (axis_align->clip_y_high)
  obj->y = min(sensor->max_y, obj->y);

 sensor->tracking_pos[slot].x = obj->x;
 sensor->tracking_pos[slot].y = obj->y;
}
