
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_pa_su_sc_draw { ____Placeholder_adreno_pa_su_sc_draw } adreno_pa_su_sc_draw ;


 int A2XX_PA_SU_SC_MODE_CNTL_BACK_PTYPE__MASK ;
 int A2XX_PA_SU_SC_MODE_CNTL_BACK_PTYPE__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_PA_SU_SC_MODE_CNTL_BACK_PTYPE(enum adreno_pa_su_sc_draw val)
{
 return ((val) << A2XX_PA_SU_SC_MODE_CNTL_BACK_PTYPE__SHIFT) & A2XX_PA_SU_SC_MODE_CNTL_BACK_PTYPE__MASK;
}
