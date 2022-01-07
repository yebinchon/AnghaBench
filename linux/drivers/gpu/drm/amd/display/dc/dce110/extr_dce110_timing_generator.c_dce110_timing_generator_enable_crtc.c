
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct timing_generator {TYPE_2__* bp; int ctx; } ;
struct dce110_timing_generator {int controller_id; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* enable_crtc ) (TYPE_2__*,int ,int) ;} ;


 int BP_RESULT_OK ;
 int CRTC_MASTER_UPDATE_MODE ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int MASTER_UPDATE_MODE ;
 int dm_write_reg (int ,int ,scalar_t__) ;
 int mmCRTC_MASTER_UPDATE_LOCK ;
 int mmCRTC_MASTER_UPDATE_MODE ;
 int set_reg_field_value (scalar_t__,int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ,int) ;

bool dce110_timing_generator_enable_crtc(struct timing_generator *tg)
{
 enum bp_result result;

 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value = 0;





 set_reg_field_value(
  value,
  0,
  CRTC_MASTER_UPDATE_MODE,
  MASTER_UPDATE_MODE);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_MASTER_UPDATE_MODE), value);


 value = 0;
 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_MASTER_UPDATE_LOCK), value);

 result = tg->bp->funcs->enable_crtc(tg->bp, tg110->controller_id, 1);

 return result == BP_RESULT_OK;
}
