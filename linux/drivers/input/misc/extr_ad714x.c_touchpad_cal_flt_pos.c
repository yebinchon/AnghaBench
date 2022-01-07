
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad714x_touchpad_drv {int x_flt_pos; int x_abs_pos; int y_flt_pos; int y_abs_pos; } ;
struct ad714x_chip {int dev; TYPE_1__* sw; } ;
struct TYPE_2__ {struct ad714x_touchpad_drv* touchpad; } ;


 int dev_dbg (int ,char*,int,int,int) ;

__attribute__((used)) static void touchpad_cal_flt_pos(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_touchpad_drv *sw = &ad714x->sw->touchpad[idx];

 sw->x_flt_pos = (sw->x_flt_pos * (10 - 4) +
   sw->x_abs_pos * 4)/10;
 sw->y_flt_pos = (sw->y_flt_pos * (10 - 4) +
   sw->y_abs_pos * 4)/10;

 dev_dbg(ad714x->dev, "touchpad %d filter position:(%d, %d)\n",
   idx, sw->x_flt_pos, sw->y_flt_pos);
}
