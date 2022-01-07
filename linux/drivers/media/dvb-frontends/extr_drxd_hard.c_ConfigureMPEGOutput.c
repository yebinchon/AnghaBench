
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxd_state {scalar_t__ operation_mode; int m_EcOcRegOcModeLop; scalar_t__ enable_parallel; scalar_t__ insert_rs_byte; } ;


 int B_EC_OC_REG_OC_MODE_HIP_MPG_BUS_SRC_MONITOR ;
 int EC_OC_REG_IPR_INV_MPG__A ;
 int EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_DISABLE ;
 int EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_ENABLE ;
 int EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL__M ;
 int EC_OC_REG_OC_MODE_HIP__A ;
 int EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE_SERIAL ;
 int EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE__M ;
 int EC_OC_REG_OC_MODE_LOP_PAR_ENA_DISABLE ;
 int EC_OC_REG_OC_MODE_LOP_PAR_ENA__M ;
 int EC_OC_REG_OC_MODE_LOP__A ;
 int EC_OC_REG_OC_MPG_SIO__A ;
 int EC_OC_REG_OC_MPG_SIO__M ;
 scalar_t__ OM_DVBT_Diversity_Front ;
 int Write16 (struct drxd_state*,int ,int,int) ;

__attribute__((used)) static int ConfigureMPEGOutput(struct drxd_state *state, int bEnableOutput)
{
 int status;

 do {
  u16 EcOcRegIprInvMpg = 0;
  u16 EcOcRegOcModeLop = 0;
  u16 EcOcRegOcModeHip = 0;
  u16 EcOcRegOcMpgSio = 0;



  if (state->operation_mode == OM_DVBT_Diversity_Front) {
   if (bEnableOutput) {
    EcOcRegOcModeHip |=
        B_EC_OC_REG_OC_MODE_HIP_MPG_BUS_SRC_MONITOR;
   } else
    EcOcRegOcMpgSio |= EC_OC_REG_OC_MPG_SIO__M;
   EcOcRegOcModeLop |=
       EC_OC_REG_OC_MODE_LOP_PAR_ENA_DISABLE;
  } else {
   EcOcRegOcModeLop = state->m_EcOcRegOcModeLop;

   if (bEnableOutput)
    EcOcRegOcMpgSio &= (~(EC_OC_REG_OC_MPG_SIO__M));
   else
    EcOcRegOcMpgSio |= EC_OC_REG_OC_MPG_SIO__M;


   if (state->insert_rs_byte) {
    EcOcRegOcModeLop &=
        (~(EC_OC_REG_OC_MODE_LOP_PAR_ENA__M));
    EcOcRegOcModeHip &=
        (~EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL__M);
    EcOcRegOcModeHip |=
        EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_ENABLE;
   } else {
    EcOcRegOcModeLop |=
        EC_OC_REG_OC_MODE_LOP_PAR_ENA_DISABLE;
    EcOcRegOcModeHip &=
        (~EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL__M);
    EcOcRegOcModeHip |=
        EC_OC_REG_OC_MODE_HIP_MPG_PAR_VAL_DISABLE;
   }


   if (state->enable_parallel)
    EcOcRegOcModeLop &=
        (~(EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE__M));
   else
    EcOcRegOcModeLop |=
        EC_OC_REG_OC_MODE_LOP_MPG_TRM_MDE_SERIAL;
  }


  EcOcRegIprInvMpg &= (~(0x00FF));



  EcOcRegIprInvMpg &= (~(0x0100));



  EcOcRegIprInvMpg &= (~(0x0200));



  EcOcRegIprInvMpg &= (~(0x0400));



  EcOcRegIprInvMpg &= (~(0x0800));


  status = Write16(state, EC_OC_REG_IPR_INV_MPG__A, EcOcRegIprInvMpg, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_OC_MODE_LOP__A, EcOcRegOcModeLop, 0);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_OC_MODE_HIP__A, EcOcRegOcModeHip, 0x0000);
  if (status < 0)
   break;
  status = Write16(state, EC_OC_REG_OC_MPG_SIO__A, EcOcRegOcMpgSio, 0);
  if (status < 0)
   break;
 } while (0);
 return status;
}
