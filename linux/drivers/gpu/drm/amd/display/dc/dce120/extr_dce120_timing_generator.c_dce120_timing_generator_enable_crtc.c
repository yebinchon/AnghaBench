
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
 int CRTC0_CRTC_MASTER_UPDATE_LOCK ;
 int CRTC0_CRTC_MASTER_UPDATE_MODE ;
 int CRTC_REG_UPDATE (int ,int ,int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int MASTER_UPDATE_MODE ;
 int UNDERFLOW_UPDATE_LOCK ;
 int stub1 (TYPE_2__*,int ,int) ;

bool dce120_timing_generator_enable_crtc(struct timing_generator *tg)
{
 enum bp_result result;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);




 CRTC_REG_UPDATE(CRTC0_CRTC_MASTER_UPDATE_MODE,
   MASTER_UPDATE_MODE, 0);

 CRTC_REG_UPDATE(CRTC0_CRTC_MASTER_UPDATE_LOCK,
   UNDERFLOW_UPDATE_LOCK, 0);


 result = tg->bp->funcs->enable_crtc(tg->bp, tg110->controller_id, 1);

 return result == BP_RESULT_OK;
}
