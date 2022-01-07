
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lg216x_state {TYPE_1__* cfg; } ;
typedef enum atscmh_sccc_code_mode { ____Placeholder_atscmh_sccc_code_mode } atscmh_sccc_code_mode ;
struct TYPE_2__ {int lg_chip; } ;


 int ATSCMH_SCCC_CODE_HLF ;
 int ATSCMH_SCCC_CODE_QTR ;
 int ATSCMH_SCCC_CODE_RES ;
 int EINVAL ;


 int lg216x_read_reg (struct lg216x_state*,int,int*) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_get_sccc_code_mode(struct lg216x_state *state,
         enum atscmh_sccc_code_mode *mode_a,
         enum atscmh_sccc_code_mode *mode_b,
         enum atscmh_sccc_code_mode *mode_c,
         enum atscmh_sccc_code_mode *mode_d)
{
 u8 val;
 int ret;

 switch (state->cfg->lg_chip) {
 case 129:
  ret = lg216x_read_reg(state, 0x0316, &val);
  break;
 case 128:
  ret = lg216x_read_reg(state, 0x0512, &val);
  break;
 default:
  ret = -EINVAL;
 }
 if (lg_fail(ret))
  goto fail;

 switch ((val >> 6) & 0x03) {
 case 0x00:
  *mode_a = ATSCMH_SCCC_CODE_HLF;
  break;
 case 0x01:
  *mode_a = ATSCMH_SCCC_CODE_QTR;
  break;
 default:
  *mode_a = ATSCMH_SCCC_CODE_RES;
  break;
 }

 switch ((val >> 4) & 0x03) {
 case 0x00:
  *mode_b = ATSCMH_SCCC_CODE_HLF;
  break;
 case 0x01:
  *mode_b = ATSCMH_SCCC_CODE_QTR;
  break;
 default:
  *mode_b = ATSCMH_SCCC_CODE_RES;
  break;
 }

 switch ((val >> 2) & 0x03) {
 case 0x00:
  *mode_c = ATSCMH_SCCC_CODE_HLF;
  break;
 case 0x01:
  *mode_c = ATSCMH_SCCC_CODE_QTR;
  break;
 default:
  *mode_c = ATSCMH_SCCC_CODE_RES;
  break;
 }

 switch (val & 0x03) {
 case 0x00:
  *mode_d = ATSCMH_SCCC_CODE_HLF;
  break;
 case 0x01:
  *mode_d = ATSCMH_SCCC_CODE_QTR;
  break;
 default:
  *mode_d = ATSCMH_SCCC_CODE_RES;
  break;
 }
fail:
 return ret;
}
