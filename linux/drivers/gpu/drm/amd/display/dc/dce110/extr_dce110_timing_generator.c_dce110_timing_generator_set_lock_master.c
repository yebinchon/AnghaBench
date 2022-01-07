
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {struct dc_context* ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct dc_context {int dummy; } ;


 int CRTC_MASTER_UPDATE_LOCK ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int MASTER_UPDATE_LOCK ;
 int dm_read_reg (struct dc_context*,int ) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int mmCRTC_MASTER_UPDATE_LOCK ;
 int set_reg_field_value (int ,int,int ,int ) ;

void dce110_timing_generator_set_lock_master(struct timing_generator *tg,
  bool lock)
{
 struct dc_context *ctx = tg->ctx;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t addr = CRTC_REG(mmCRTC_MASTER_UPDATE_LOCK);
 uint32_t value = dm_read_reg(ctx, addr);

 set_reg_field_value(
  value,
  lock ? 1 : 0,
  CRTC_MASTER_UPDATE_LOCK,
  MASTER_UPDATE_LOCK);

 dm_write_reg(ctx, addr, value);
}
