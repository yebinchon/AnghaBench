
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad714x_slider_plat {int end_stage; int start_stage; } ;
struct ad714x_chip {TYPE_1__* hw; } ;
struct TYPE_2__ {struct ad714x_slider_plat* slider; } ;


 int ad714x_use_thr_int (struct ad714x_chip*,int ,int ) ;

__attribute__((used)) static void ad714x_slider_use_thr_int(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_slider_plat *hw = &ad714x->hw->slider[idx];

 ad714x_use_thr_int(ad714x, hw->start_stage, hw->end_stage);
}
