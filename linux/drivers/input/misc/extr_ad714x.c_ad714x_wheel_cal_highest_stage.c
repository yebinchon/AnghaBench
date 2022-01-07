
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad714x_wheel_plat {int end_stage; int start_stage; } ;
struct ad714x_wheel_drv {int highest_stage; int pre_highest_stage; } ;
struct ad714x_chip {int dev; TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_wheel_drv* wheel; } ;
struct TYPE_3__ {struct ad714x_wheel_plat* wheel; } ;


 int ad714x_cal_highest_stage (struct ad714x_chip*,int ,int ) ;
 int dev_dbg (int ,char*,int,int ) ;

__attribute__((used)) static void ad714x_wheel_cal_highest_stage(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_wheel_plat *hw = &ad714x->hw->wheel[idx];
 struct ad714x_wheel_drv *sw = &ad714x->sw->wheel[idx];

 sw->pre_highest_stage = sw->highest_stage;
 sw->highest_stage = ad714x_cal_highest_stage(ad714x, hw->start_stage,
   hw->end_stage);

 dev_dbg(ad714x->dev, "wheel %d highest_stage:%d\n", idx,
  sw->highest_stage);
}
