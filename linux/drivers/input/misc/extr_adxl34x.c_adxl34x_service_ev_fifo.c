
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axis_triple {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct adxl34x_platform_data {int ev_code_z; int ev_type; int ev_code_y; int ev_code_x; } ;
struct TYPE_2__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct adxl34x {TYPE_1__ swcal; int input; struct adxl34x_platform_data pdata; } ;


 int adxl34x_get_triple (struct adxl34x*,struct axis_triple*) ;
 int input_event (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void adxl34x_service_ev_fifo(struct adxl34x *ac)
{
 struct adxl34x_platform_data *pdata = &ac->pdata;
 struct axis_triple axis;

 adxl34x_get_triple(ac, &axis);

 input_event(ac->input, pdata->ev_type, pdata->ev_code_x,
      axis.x - ac->swcal.x);
 input_event(ac->input, pdata->ev_type, pdata->ev_code_y,
      axis.y - ac->swcal.y);
 input_event(ac->input, pdata->ev_type, pdata->ev_code_z,
      axis.z - ac->swcal.z);
}
