
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timing_generator {TYPE_2__* bp; } ;
struct dce110_timing_generator {int controller_id; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* enable_crtc ) (TYPE_2__*,int ,int) ;} ;


 int BP_RESULT_OK ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int stub1 (TYPE_2__*,int ,int) ;

bool dce110_timing_generator_disable_crtc(struct timing_generator *tg)
{
 enum bp_result result;

 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 result = tg->bp->funcs->enable_crtc(tg->bp, tg110->controller_id, 0);
 return result == BP_RESULT_OK;
}
