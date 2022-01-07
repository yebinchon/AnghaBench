
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lg216x_state {TYPE_1__* cfg; } ;
typedef enum atscmh_rs_frame_mode { ____Placeholder_atscmh_rs_frame_mode } atscmh_rs_frame_mode ;
struct TYPE_2__ {int lg_chip; } ;


 int ATSCMH_RSFRAME_PRI_ONLY ;
 int ATSCMH_RSFRAME_PRI_SEC ;
 int ATSCMH_RSFRAME_RES ;
 int EINVAL ;


 int lg216x_read_reg (struct lg216x_state*,int,int*) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_get_rs_frame_mode(struct lg216x_state *state,
        enum atscmh_rs_frame_mode *rs_framemode)
{
 u8 val;
 int ret;

 switch (state->cfg->lg_chip) {
 case 129:
  ret = lg216x_read_reg(state, 0x0410, &val);
  break;
 case 128:
  ret = lg216x_read_reg(state, 0x0513, &val);
  break;
 default:
  ret = -EINVAL;
 }
 if (lg_fail(ret))
  goto fail;

 switch ((val >> 4) & 0x03) {

 default:

 case 0x00:
  *rs_framemode = ATSCMH_RSFRAME_PRI_ONLY;
  break;
 case 0x01:
  *rs_framemode = ATSCMH_RSFRAME_PRI_SEC;
  break;





 }
fail:
 return ret;
}
