
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad714x_slider_drv {int flt_pos; int abs_pos; } ;
struct ad714x_chip {int dev; TYPE_1__* sw; } ;
struct TYPE_2__ {struct ad714x_slider_drv* slider; } ;


 int dev_dbg (int ,char*,int,int) ;

__attribute__((used)) static void ad714x_slider_cal_flt_pos(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_slider_drv *sw = &ad714x->sw->slider[idx];

 sw->flt_pos = (sw->flt_pos * (10 - 4) +
   sw->abs_pos * 4)/10;

 dev_dbg(ad714x->dev, "slider %d filter position:%d\n", idx,
  sw->flt_pos);
}
