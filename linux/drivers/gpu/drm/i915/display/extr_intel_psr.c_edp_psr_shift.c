
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int EDP_PSR_TRANSCODER_A_SHIFT ;
 int EDP_PSR_TRANSCODER_B_SHIFT ;
 int EDP_PSR_TRANSCODER_C_SHIFT ;
 int EDP_PSR_TRANSCODER_EDP_SHIFT ;
 int MISSING_CASE (int) ;





__attribute__((used)) static int edp_psr_shift(enum transcoder cpu_transcoder)
{
 switch (cpu_transcoder) {
 case 131:
  return EDP_PSR_TRANSCODER_A_SHIFT;
 case 130:
  return EDP_PSR_TRANSCODER_B_SHIFT;
 case 129:
  return EDP_PSR_TRANSCODER_C_SHIFT;
 default:
  MISSING_CASE(cpu_transcoder);

 case 128:
  return EDP_PSR_TRANSCODER_EDP_SHIFT;
 }
}
