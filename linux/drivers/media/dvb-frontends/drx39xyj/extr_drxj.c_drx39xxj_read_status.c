
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drx39xxj_state* demodulator_priv; } ;
struct drx_demod_instance {int dummy; } ;
struct drx39xxj_state {struct drx_demod_instance* demod; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
typedef enum drx_lock_status { ____Placeholder_drx_lock_status } drx_lock_status ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int ctrl_lock_status (struct drx_demod_instance*,int*) ;
 int ctrl_sig_quality (struct drx_demod_instance*,int) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int drx39xxj_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct drx39xxj_state *state = fe->demodulator_priv;
 struct drx_demod_instance *demod = state->demod;
 int result;
 enum drx_lock_status lock_status;

 *status = 0;

 result = ctrl_lock_status(demod, &lock_status);
 if (result != 0) {
  pr_err("drx39xxj: could not get lock status!\n");
  *status = 0;
 }

 switch (lock_status) {
 case 129:
  *status = 0;
  pr_err("drx says NEVER_LOCK\n");
  break;
 case 128:
  *status = 0;
  break;
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  *status = FE_HAS_SIGNAL
      | FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC;
  break;
 case 139:
  *status = FE_HAS_SIGNAL
      | FE_HAS_CARRIER
      | FE_HAS_VITERBI | FE_HAS_SYNC | FE_HAS_LOCK;
  break;
 default:
  pr_err("Lock state unknown %d\n", lock_status);
 }
 ctrl_sig_quality(demod, lock_status);

 return 0;
}
