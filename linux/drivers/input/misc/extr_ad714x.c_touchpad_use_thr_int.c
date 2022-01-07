
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad714x_touchpad_plat {int y_end_stage; int y_start_stage; int x_end_stage; int x_start_stage; } ;
struct ad714x_chip {TYPE_1__* hw; } ;
struct TYPE_2__ {struct ad714x_touchpad_plat* touchpad; } ;


 int ad714x_use_thr_int (struct ad714x_chip*,int ,int ) ;

__attribute__((used)) static void touchpad_use_thr_int(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_touchpad_plat *hw = &ad714x->hw->touchpad[idx];

 ad714x_use_thr_int(ad714x, hw->x_start_stage, hw->x_end_stage);
 ad714x_use_thr_int(ad714x, hw->y_start_stage, hw->y_end_stage);
}
