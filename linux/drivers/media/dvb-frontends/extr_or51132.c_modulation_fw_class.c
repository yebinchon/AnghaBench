
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;


 int MOD_FWCLASS_QAM ;
 int MOD_FWCLASS_UNKNOWN ;
 int MOD_FWCLASS_VSB ;





__attribute__((used)) static int modulation_fw_class(enum fe_modulation modulation)
{
 switch(modulation) {
 case 128:
  return MOD_FWCLASS_VSB;
 case 129:
 case 130:
 case 131:
  return MOD_FWCLASS_QAM;
 default:
  return MOD_FWCLASS_UNKNOWN;
 }
}
