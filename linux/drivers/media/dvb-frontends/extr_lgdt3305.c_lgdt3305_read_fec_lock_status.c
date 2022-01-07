
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3305_state {int current_modulation; } ;


 int EINVAL ;
 int LGDT3305_FEC_LOCK_STATUS ;



 int lg_dbg (char*,int,char*,char*,char*) ;
 int lg_fail (int) ;
 int lgdt3305_read_reg (struct lgdt3305_state*,int ,int*) ;

__attribute__((used)) static int lgdt3305_read_fec_lock_status(struct lgdt3305_state *state,
      int *locked)
{
 u8 val;
 int ret, mpeg_lock, fec_lock, viterbi_lock;

 *locked = 0;

 switch (state->current_modulation) {
 case 130:
 case 129:
  ret = lgdt3305_read_reg(state,
     LGDT3305_FEC_LOCK_STATUS, &val);
  if (lg_fail(ret))
   goto fail;

  mpeg_lock = (val & (1 << 0)) ? 1 : 0;
  fec_lock = (val & (1 << 2)) ? 1 : 0;
  viterbi_lock = (val & (1 << 3)) ? 1 : 0;

  *locked = mpeg_lock && fec_lock && viterbi_lock;

  lg_dbg("(%d) %s%s%s\n", *locked,
         mpeg_lock ? "mpeg lock  " : "",
         fec_lock ? "fec lock  " : "",
         viterbi_lock ? "viterbi lock" : "");
  break;
 case 128:
 default:
  ret = -EINVAL;
 }
fail:
 return ret;
}
