
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_watermarks {int a_mark; int b_mark; } ;
struct dc_context {int dummy; } ;


 int DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL ;
 int DPGV0_WATERMARK_MASK_CONTROL ;
 int NB_PSTATE_CHANGE_ENABLE ;
 int NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST ;
 int NB_PSTATE_CHANGE_URGENT_DURING_REQUEST ;
 int NB_PSTATE_CHANGE_WATERMARK ;
 int NB_PSTATE_CHANGE_WATERMARK_MASK ;
 int dm_read_reg (struct dc_context const*,int const) ;
 int dm_write_reg (struct dc_context const*,int const,int ) ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void program_nbp_watermark(
 const struct dc_context *ctx,
 const uint32_t wm_mask_ctrl_addr,
 const uint32_t nbp_pstate_ctrl_addr,
 struct dce_watermarks marks)
{
 uint32_t value;



 value = dm_read_reg(ctx, wm_mask_ctrl_addr);

 set_reg_field_value(
  value,
  1,
  DPGV0_WATERMARK_MASK_CONTROL,
  NB_PSTATE_CHANGE_WATERMARK_MASK);
 dm_write_reg(ctx, wm_mask_ctrl_addr, value);

 value = dm_read_reg(ctx, nbp_pstate_ctrl_addr);

 set_reg_field_value(
  value,
  1,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_ENABLE);
 set_reg_field_value(
  value,
  1,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_URGENT_DURING_REQUEST);
 set_reg_field_value(
  value,
  1,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST);
 dm_write_reg(ctx, nbp_pstate_ctrl_addr, value);


 value = dm_read_reg(ctx, nbp_pstate_ctrl_addr);
 set_reg_field_value(
  value,
  marks.a_mark,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_WATERMARK);
 dm_write_reg(ctx, nbp_pstate_ctrl_addr, value);


 value = dm_read_reg(ctx, wm_mask_ctrl_addr);
 set_reg_field_value(
  value,
  2,
  DPGV0_WATERMARK_MASK_CONTROL,
  NB_PSTATE_CHANGE_WATERMARK_MASK);
 dm_write_reg(ctx, wm_mask_ctrl_addr, value);

 value = dm_read_reg(ctx, nbp_pstate_ctrl_addr);
 set_reg_field_value(
  value,
  1,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_ENABLE);
 set_reg_field_value(
  value,
  1,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_URGENT_DURING_REQUEST);
 set_reg_field_value(
  value,
  1,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_NOT_SELF_REFRESH_DURING_REQUEST);
 dm_write_reg(ctx, nbp_pstate_ctrl_addr, value);


 value = dm_read_reg(ctx, nbp_pstate_ctrl_addr);
 set_reg_field_value(
  value,
  marks.b_mark,
  DPGV0_PIPE_NB_PSTATE_CHANGE_CONTROL,
  NB_PSTATE_CHANGE_WATERMARK);
 dm_write_reg(ctx, nbp_pstate_ctrl_addr, value);
}
