
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;
typedef int int32_t ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int ASSERT (int) ;







 int DIG_BE_CNTL ;
 int DIG_FE_SOURCE_SELECT ;
 int ENGINE_ID_DIGA ;
 int ENGINE_ID_DIGB ;
 int ENGINE_ID_DIGC ;
 int ENGINE_ID_DIGD ;
 int ENGINE_ID_DIGE ;
 int ENGINE_ID_DIGF ;
 int ENGINE_ID_DIGG ;
 int ENGINE_ID_UNKNOWN ;
 int REG_GET (int ,int ,int*) ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;

unsigned int dcn10_get_dig_frontend(struct link_encoder *enc)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);
 int32_t value;
 enum engine_id result;

 REG_GET(DIG_BE_CNTL, DIG_FE_SOURCE_SELECT, &value);

 switch (value) {
 case 134:
  result = ENGINE_ID_DIGA;
  break;
 case 133:
  result = ENGINE_ID_DIGB;
  break;
 case 132:
  result = ENGINE_ID_DIGC;
  break;
 case 131:
  result = ENGINE_ID_DIGD;
  break;
 case 130:
  result = ENGINE_ID_DIGE;
  break;
 case 129:
  result = ENGINE_ID_DIGF;
  break;
 case 128:
  result = ENGINE_ID_DIGG;
  break;
 default:

  ASSERT(0);
  result = ENGINE_ID_UNKNOWN;
 }

 return result;

}
