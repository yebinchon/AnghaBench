
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int ASSERT_CRITICAL (int) ;
 int DIG_BE_CNTL ;
 int DIG_MODE ;
 int REG_UPDATE (int ,int ,int) ;







 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;

void dcn10_link_encoder_setup(
 struct link_encoder *enc,
 enum signal_type signal)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);

 switch (signal) {
 case 130:
 case 134:

  REG_UPDATE(DIG_BE_CNTL, DIG_MODE, 0);
  break;
 case 128:

  REG_UPDATE(DIG_BE_CNTL, DIG_MODE, 1);
  break;
 case 131:
 case 132:

  REG_UPDATE(DIG_BE_CNTL, DIG_MODE, 2);
  break;
 case 129:

  REG_UPDATE(DIG_BE_CNTL, DIG_MODE, 3);
  break;
 case 133:

  REG_UPDATE(DIG_BE_CNTL, DIG_MODE, 5);
  break;
 default:
  ASSERT_CRITICAL(0);

  break;
 }

}
