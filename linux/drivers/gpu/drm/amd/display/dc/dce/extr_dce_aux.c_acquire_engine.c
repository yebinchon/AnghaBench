
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dce_aux {int dummy; } ;
struct aux_engine_dce110 {int dummy; } ;


 int AUX_ARB_CONTROL ;
 int AUX_CONTROL ;
 int AUX_EN ;
 int AUX_REG_RW_CNTL_STATUS ;
 int AUX_RESET ;
 int AUX_RESET_DONE ;
 int AUX_RESET_MASK ;
 int AUX_SW_USE_AUX_REG_REQ ;
 scalar_t__ DMCU_CAN_ACCESS_AUX ;
 struct aux_engine_dce110* FROM_AUX_ENGINE (struct dce_aux*) ;
 scalar_t__ REG (int ) ;
 scalar_t__ REG_READ (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 int REG_WRITE (int ,scalar_t__) ;
 scalar_t__ SW_CAN_ACCESS_AUX ;
 scalar_t__ get_reg_field_value (scalar_t__,int ,int ) ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;

__attribute__((used)) static bool acquire_engine(
 struct dce_aux *engine)
{
 struct aux_engine_dce110 *aux110 = FROM_AUX_ENGINE(engine);

 uint32_t value = REG_READ(AUX_ARB_CONTROL);
 uint32_t field = get_reg_field_value(
   value,
   AUX_ARB_CONTROL,
   AUX_REG_RW_CNTL_STATUS);
 if (field == DMCU_CAN_ACCESS_AUX)
  return 0;

 value = REG_READ(AUX_CONTROL);
 field = get_reg_field_value(value,
    AUX_CONTROL,
    AUX_EN);

 if (field == 0) {
  set_reg_field_value(
    value,
    1,
    AUX_CONTROL,
    AUX_EN);

  if (REG(AUX_RESET_MASK)) {

   set_reg_field_value(
    value,
    1,
    AUX_CONTROL,
    AUX_RESET);
  }

  REG_WRITE(AUX_CONTROL, value);

  if (REG(AUX_RESET_MASK)) {


   REG_WAIT(AUX_CONTROL, AUX_RESET_DONE, 1,
     1, 11);

   set_reg_field_value(
    value,
    0,
    AUX_CONTROL,
    AUX_RESET);

   REG_WRITE(AUX_CONTROL, value);

   REG_WAIT(AUX_CONTROL, AUX_RESET_DONE, 0,
     1, 11);
  }
 }


 REG_UPDATE(AUX_ARB_CONTROL, AUX_SW_USE_AUX_REG_REQ, 1);

 value = REG_READ(AUX_ARB_CONTROL);
 field = get_reg_field_value(
   value,
   AUX_ARB_CONTROL,
   AUX_REG_RW_CNTL_STATUS);

 return (field == SW_CAN_ACCESS_AUX);
}
