
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lg216x_state {TYPE_1__* cfg; } ;
typedef enum atscmh_sccc_block_mode { ____Placeholder_atscmh_sccc_block_mode } atscmh_sccc_block_mode ;
struct TYPE_2__ {int lg_chip; } ;


 int ATSCMH_SCCC_BLK_COMB ;
 int ATSCMH_SCCC_BLK_RES ;
 int ATSCMH_SCCC_BLK_SEP ;
 int EINVAL ;


 int lg216x_read_reg (struct lg216x_state*,int,int*) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_get_sccc_block_mode(struct lg216x_state *state,
          enum atscmh_sccc_block_mode *sccc_block)
{
 u8 val;
 int ret;

 switch (state->cfg->lg_chip) {
 case 129:
  ret = lg216x_read_reg(state, 0x0315, &val);
  break;
 case 128:
  ret = lg216x_read_reg(state, 0x0511, &val);
  break;
 default:
  ret = -EINVAL;
 }
 if (lg_fail(ret))
  goto fail;

 switch (val & 0x03) {
 case 0x00:
  *sccc_block = ATSCMH_SCCC_BLK_SEP;
  break;
 case 0x01:
  *sccc_block = ATSCMH_SCCC_BLK_COMB;
  break;
 default:
  *sccc_block = ATSCMH_SCCC_BLK_RES;
  break;
 }
fail:
 return ret;
}
