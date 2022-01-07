
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad714x_slider_plat {int max_coord; int end_stage; int start_stage; } ;
struct ad714x_slider_drv {int abs_pos; int highest_stage; } ;
struct ad714x_chip {int dev; TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_slider_drv* slider; } ;
struct TYPE_3__ {struct ad714x_slider_plat* slider; } ;


 int ad714x_cal_abs_pos (struct ad714x_chip*,int ,int ,int ,int ) ;
 int dev_dbg (int ,char*,int,int ) ;

__attribute__((used)) static void ad714x_slider_cal_abs_pos(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_slider_plat *hw = &ad714x->hw->slider[idx];
 struct ad714x_slider_drv *sw = &ad714x->sw->slider[idx];

 sw->abs_pos = ad714x_cal_abs_pos(ad714x, hw->start_stage, hw->end_stage,
  sw->highest_stage, hw->max_coord);

 dev_dbg(ad714x->dev, "slider %d absolute position:%d\n", idx,
  sw->abs_pos);
}
