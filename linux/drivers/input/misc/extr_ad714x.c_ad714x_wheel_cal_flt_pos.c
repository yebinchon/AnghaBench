
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad714x_wheel_plat {scalar_t__ end_stage; scalar_t__ start_stage; int max_coord; } ;
struct ad714x_wheel_drv {scalar_t__ pre_highest_stage; scalar_t__ highest_stage; int flt_pos; int abs_pos; } ;
struct ad714x_chip {TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_wheel_drv* wheel; } ;
struct TYPE_3__ {struct ad714x_wheel_plat* wheel; } ;



__attribute__((used)) static void ad714x_wheel_cal_flt_pos(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_wheel_plat *hw = &ad714x->hw->wheel[idx];
 struct ad714x_wheel_drv *sw = &ad714x->sw->wheel[idx];
 if (((sw->pre_highest_stage == hw->end_stage) &&
   (sw->highest_stage == hw->start_stage)) ||
     ((sw->pre_highest_stage == hw->start_stage) &&
   (sw->highest_stage == hw->end_stage)))
  sw->flt_pos = sw->abs_pos;
 else
  sw->flt_pos = ((sw->flt_pos * 30) + (sw->abs_pos * 71)) / 100;

 if (sw->flt_pos > hw->max_coord)
  sw->flt_pos = hw->max_coord;
}
