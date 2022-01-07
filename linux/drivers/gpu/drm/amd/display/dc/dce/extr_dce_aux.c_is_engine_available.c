
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dce_aux {int dummy; } ;
struct aux_engine_dce110 {int dummy; } ;


 int AUX_ARB_CONTROL ;
 int AUX_REG_RW_CNTL_STATUS ;
 scalar_t__ DMCU_CAN_ACCESS_AUX ;
 struct aux_engine_dce110* FROM_AUX_ENGINE (struct dce_aux*) ;
 scalar_t__ REG_READ (int ) ;
 scalar_t__ get_reg_field_value (scalar_t__,int ,int ) ;

__attribute__((used)) static bool is_engine_available(
 struct dce_aux *engine)
{
 struct aux_engine_dce110 *aux110 = FROM_AUX_ENGINE(engine);

 uint32_t value = REG_READ(AUX_ARB_CONTROL);
 uint32_t field = get_reg_field_value(
   value,
   AUX_ARB_CONTROL,
   AUX_REG_RW_CNTL_STATUS);

 return (field != DMCU_CAN_ACCESS_AUX);
}
