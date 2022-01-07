
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dce110_compressor {int offsets; } ;
struct compressor {int ctx; } ;


 int DCP_REG (int ) ;
 int LB_SYNC_RESET_SEL ;
 int LB_SYNC_RESET_SEL2 ;
 struct dce110_compressor* TO_DCE110_COMPRESSOR (struct compressor*) ;
 int dm_error (char*) ;
 size_t dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,size_t) ;
 int mmCRTC_STATUS_FRAME_COUNT ;
 int mmCRTC_STATUS_POSITION ;
 int mmLB_SYNC_RESET_SEL ;
 int * reg_offsets ;
 int set_reg_field_value (size_t,int,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void reset_lb_on_vblank(struct compressor *compressor, uint32_t crtc_inst)
{
 uint32_t value;
 uint32_t frame_count;
 uint32_t status_pos;
 uint32_t retry = 0;
 struct dce110_compressor *cp110 = TO_DCE110_COMPRESSOR(compressor);

 cp110->offsets = reg_offsets[crtc_inst];

 status_pos = dm_read_reg(compressor->ctx, DCP_REG(mmCRTC_STATUS_POSITION));



 if (status_pos != dm_read_reg(compressor->ctx, DCP_REG(mmCRTC_STATUS_POSITION))) {

  value = dm_read_reg(compressor->ctx, DCP_REG(mmLB_SYNC_RESET_SEL));
  set_reg_field_value(value, 3, LB_SYNC_RESET_SEL, LB_SYNC_RESET_SEL);
  set_reg_field_value(value, 1, LB_SYNC_RESET_SEL, LB_SYNC_RESET_SEL2);
  dm_write_reg(compressor->ctx, DCP_REG(mmLB_SYNC_RESET_SEL), value);

  frame_count = dm_read_reg(compressor->ctx, DCP_REG(mmCRTC_STATUS_FRAME_COUNT));


  for (retry = 10000; retry > 0; retry--) {
   if (frame_count != dm_read_reg(compressor->ctx, DCP_REG(mmCRTC_STATUS_FRAME_COUNT)))
    break;
   udelay(10);
  }
  if (!retry)
   dm_error("Frame count did not increase for 100ms.\n");


  value = dm_read_reg(compressor->ctx, DCP_REG(mmLB_SYNC_RESET_SEL));
  set_reg_field_value(value, 2, LB_SYNC_RESET_SEL, LB_SYNC_RESET_SEL);
  set_reg_field_value(value, 0, LB_SYNC_RESET_SEL, LB_SYNC_RESET_SEL2);
  dm_write_reg(compressor->ctx, DCP_REG(mmLB_SYNC_RESET_SEL), value);
 }
}
