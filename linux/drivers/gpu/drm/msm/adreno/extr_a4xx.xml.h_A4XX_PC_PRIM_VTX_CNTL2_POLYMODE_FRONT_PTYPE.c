
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_pa_su_sc_draw { ____Placeholder_adreno_pa_su_sc_draw } adreno_pa_su_sc_draw ;


 int A4XX_PC_PRIM_VTX_CNTL2_POLYMODE_FRONT_PTYPE__MASK ;
 int A4XX_PC_PRIM_VTX_CNTL2_POLYMODE_FRONT_PTYPE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_PC_PRIM_VTX_CNTL2_POLYMODE_FRONT_PTYPE(enum adreno_pa_su_sc_draw val)
{
 return ((val) << A4XX_PC_PRIM_VTX_CNTL2_POLYMODE_FRONT_PTYPE__SHIFT) & A4XX_PC_PRIM_VTX_CNTL2_POLYMODE_FRONT_PTYPE__MASK;
}
