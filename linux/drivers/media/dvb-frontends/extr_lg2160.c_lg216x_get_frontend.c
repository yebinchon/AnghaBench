
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lg216x_state {int last_reset; TYPE_1__* cfg; int parade_id; int fic_ver; int current_frequency; } ;
struct dvb_frontend {struct lg216x_state* demodulator_priv; } ;
struct dtv_frontend_properties {int atscmh_crc_err; int atscmh_rs_err; int atscmh_fic_err; int atscmh_sccc_code_mode_d; int atscmh_sccc_code_mode_c; int atscmh_sccc_code_mode_b; int atscmh_sccc_code_mode_a; int atscmh_sccc_block_mode; int atscmh_rs_code_mode_sec; int atscmh_rs_code_mode_pri; int atscmh_rs_frame_ensemble; int atscmh_rs_frame_mode; int atscmh_prc; int atscmh_sgn; int atscmh_tnog; int atscmh_nog; int atscmh_parade_id; int atscmh_fic_ver; int delivery_system; int frequency; int modulation; } ;
typedef enum atscmh_sccc_code_mode { ____Placeholder_atscmh_sccc_code_mode } atscmh_sccc_code_mode ;
typedef enum atscmh_sccc_block_mode { ____Placeholder_atscmh_sccc_block_mode } atscmh_sccc_block_mode ;
typedef enum atscmh_rs_frame_mode { ____Placeholder_atscmh_rs_frame_mode } atscmh_rs_frame_mode ;
typedef enum atscmh_rs_frame_ensemble { ____Placeholder_atscmh_rs_frame_ensemble } atscmh_rs_frame_ensemble ;
typedef enum atscmh_rs_code_mode { ____Placeholder_atscmh_rs_code_mode } atscmh_rs_code_mode ;
struct TYPE_2__ {int lg_chip; } ;




 int SYS_ATSCMH ;
 int VSB_8 ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int lg2160_get_parade_id (struct lg216x_state*,int *) ;
 int lg216x_get_fic_version (struct lg216x_state*,int *) ;
 int lg216x_get_nog (struct lg216x_state*,int *) ;
 int lg216x_get_prc (struct lg216x_state*,int *) ;
 int lg216x_get_rs_code_mode (struct lg216x_state*,int*,int*) ;
 int lg216x_get_rs_frame_ensemble (struct lg216x_state*,int*) ;
 int lg216x_get_rs_frame_mode (struct lg216x_state*,int*) ;
 int lg216x_get_sccc_block_mode (struct lg216x_state*,int*) ;
 int lg216x_get_sccc_code_mode (struct lg216x_state*,int*,int*,int*,int*) ;
 int lg216x_get_sgn (struct lg216x_state*,int *) ;
 int lg216x_get_tnog (struct lg216x_state*,int *) ;
 int lg216x_read_crc_err_count (struct lg216x_state*,int*) ;
 int lg216x_read_fic_err_count (struct lg216x_state*,int *) ;
 int lg216x_read_rs_err_count (struct lg216x_state*,int*) ;
 int lg216x_soft_reset (struct lg216x_state*) ;
 int lg_dbg (char*) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_get_frontend(struct dvb_frontend *fe,
          struct dtv_frontend_properties *c)
{
 struct lg216x_state *state = fe->demodulator_priv;
 int ret;

 lg_dbg("\n");

 c->modulation = VSB_8;
 c->frequency = state->current_frequency;
 c->delivery_system = SYS_ATSCMH;

 ret = lg216x_get_fic_version(state,
         &c->atscmh_fic_ver);
 if (lg_fail(ret))
  goto fail;
 if (state->fic_ver != c->atscmh_fic_ver) {
  state->fic_ver = c->atscmh_fic_ver;
  ret = lg216x_get_nog(state,
         &c->atscmh_nog);
  if (lg_fail(ret))
   goto fail;
  ret = lg216x_get_tnog(state,
          &c->atscmh_tnog);
  if (lg_fail(ret))
   goto fail;
  ret = lg216x_get_sgn(state,
         &c->atscmh_sgn);
  if (lg_fail(ret))
   goto fail;
  ret = lg216x_get_prc(state,
         &c->atscmh_prc);
  if (lg_fail(ret))
   goto fail;

  ret = lg216x_get_rs_frame_mode(state,
   (enum atscmh_rs_frame_mode *)
   &c->atscmh_rs_frame_mode);
  if (lg_fail(ret))
   goto fail;
  ret = lg216x_get_rs_frame_ensemble(state,
   (enum atscmh_rs_frame_ensemble *)
   &c->atscmh_rs_frame_ensemble);
  if (lg_fail(ret))
   goto fail;
  ret = lg216x_get_rs_code_mode(state,
   (enum atscmh_rs_code_mode *)
   &c->atscmh_rs_code_mode_pri,
   (enum atscmh_rs_code_mode *)
   &c->atscmh_rs_code_mode_sec);
  if (lg_fail(ret))
   goto fail;
  ret = lg216x_get_sccc_block_mode(state,
   (enum atscmh_sccc_block_mode *)
   &c->atscmh_sccc_block_mode);
  if (lg_fail(ret))
   goto fail;
  ret = lg216x_get_sccc_code_mode(state,
   (enum atscmh_sccc_code_mode *)
   &c->atscmh_sccc_code_mode_a,
   (enum atscmh_sccc_code_mode *)
   &c->atscmh_sccc_code_mode_b,
   (enum atscmh_sccc_code_mode *)
   &c->atscmh_sccc_code_mode_c,
   (enum atscmh_sccc_code_mode *)
   &c->atscmh_sccc_code_mode_d);
  if (lg_fail(ret))
   goto fail;
 }
fail:
 return ret;
}
