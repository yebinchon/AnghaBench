
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int ASSERT_CRITICAL (int) ;
 int DCN10_DIG_FE_SOURCE_SELECT_DIGA ;
 int DCN10_DIG_FE_SOURCE_SELECT_DIGB ;
 int DCN10_DIG_FE_SOURCE_SELECT_DIGC ;
 int DCN10_DIG_FE_SOURCE_SELECT_DIGD ;
 int DCN10_DIG_FE_SOURCE_SELECT_DIGE ;
 int DCN10_DIG_FE_SOURCE_SELECT_DIGF ;
 int DCN10_DIG_FE_SOURCE_SELECT_DIGG ;
 int DCN10_DIG_FE_SOURCE_SELECT_INVALID ;
__attribute__((used)) static uint8_t get_frontend_source(
 enum engine_id engine)
{
 switch (engine) {
 case 134:
  return DCN10_DIG_FE_SOURCE_SELECT_DIGA;
 case 133:
  return DCN10_DIG_FE_SOURCE_SELECT_DIGB;
 case 132:
  return DCN10_DIG_FE_SOURCE_SELECT_DIGC;
 case 131:
  return DCN10_DIG_FE_SOURCE_SELECT_DIGD;
 case 130:
  return DCN10_DIG_FE_SOURCE_SELECT_DIGE;
 case 129:
  return DCN10_DIG_FE_SOURCE_SELECT_DIGF;
 case 128:
  return DCN10_DIG_FE_SOURCE_SELECT_DIGG;
 default:
  ASSERT_CRITICAL(0);
  return DCN10_DIG_FE_SOURCE_SELECT_INVALID;
 }
}
