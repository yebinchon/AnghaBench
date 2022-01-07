
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rmi_2d_sensor {int dummy; } ;
struct f11_2d_data {int * rel_pos; } ;
struct f11_data {struct f11_2d_data data; struct rmi_2d_sensor sensor; } ;
typedef int s8 ;


 size_t RMI_F11_REL_BYTES ;
 int rmi_2d_sensor_rel_report (struct rmi_2d_sensor*,int ,int ) ;

__attribute__((used)) static void rmi_f11_rel_pos_report(struct f11_data *f11, u8 n_finger)
{
 struct rmi_2d_sensor *sensor = &f11->sensor;
 struct f11_2d_data *data = &f11->data;
 s8 x, y;

 x = data->rel_pos[n_finger * RMI_F11_REL_BYTES];
 y = data->rel_pos[n_finger * RMI_F11_REL_BYTES + 1];

 rmi_2d_sensor_rel_report(sensor, x, y);
}
