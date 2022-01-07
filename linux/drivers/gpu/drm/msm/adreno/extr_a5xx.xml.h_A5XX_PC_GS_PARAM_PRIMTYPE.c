
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_pa_su_sc_draw { ____Placeholder_adreno_pa_su_sc_draw } adreno_pa_su_sc_draw ;


 int A5XX_PC_GS_PARAM_PRIMTYPE__MASK ;
 int A5XX_PC_GS_PARAM_PRIMTYPE__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_PC_GS_PARAM_PRIMTYPE(enum adreno_pa_su_sc_draw val)
{
 return ((val) << A5XX_PC_GS_PARAM_PRIMTYPE__SHIFT) & A5XX_PC_GS_PARAM_PRIMTYPE__MASK;
}
