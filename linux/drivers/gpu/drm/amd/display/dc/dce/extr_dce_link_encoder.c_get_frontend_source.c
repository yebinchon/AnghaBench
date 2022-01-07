
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int ASSERT_CRITICAL (int) ;
 int DCE110_DIG_FE_SOURCE_SELECT_DIGA ;
 int DCE110_DIG_FE_SOURCE_SELECT_DIGB ;
 int DCE110_DIG_FE_SOURCE_SELECT_DIGC ;
 int DCE110_DIG_FE_SOURCE_SELECT_DIGD ;
 int DCE110_DIG_FE_SOURCE_SELECT_DIGE ;
 int DCE110_DIG_FE_SOURCE_SELECT_DIGF ;
 int DCE110_DIG_FE_SOURCE_SELECT_DIGG ;
 int DCE110_DIG_FE_SOURCE_SELECT_INVALID ;
__attribute__((used)) static uint8_t get_frontend_source(
 enum engine_id engine)
{
 switch (engine) {
 case 134:
  return DCE110_DIG_FE_SOURCE_SELECT_DIGA;
 case 133:
  return DCE110_DIG_FE_SOURCE_SELECT_DIGB;
 case 132:
  return DCE110_DIG_FE_SOURCE_SELECT_DIGC;
 case 131:
  return DCE110_DIG_FE_SOURCE_SELECT_DIGD;
 case 130:
  return DCE110_DIG_FE_SOURCE_SELECT_DIGE;
 case 129:
  return DCE110_DIG_FE_SOURCE_SELECT_DIGF;
 case 128:
  return DCE110_DIG_FE_SOURCE_SELECT_DIGG;
 default:
  ASSERT_CRITICAL(0);
  return DCE110_DIG_FE_SOURCE_SELECT_INVALID;
 }
}
