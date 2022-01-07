
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp8psk_fe_state {int status_check_interval; scalar_t__ lock; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int gp8psk_fe_update_status (struct gp8psk_fe_state*) ;

__attribute__((used)) static int gp8psk_fe_read_status(struct dvb_frontend *fe,
     enum fe_status *status)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;
 gp8psk_fe_update_status(st);

 if (st->lock)
  *status = FE_HAS_LOCK | FE_HAS_SYNC | FE_HAS_VITERBI | FE_HAS_SIGNAL | FE_HAS_CARRIER;
 else
  *status = 0;

 if (*status & FE_HAS_LOCK)
  st->status_check_interval = 1000;
 else
  st->status_check_interval = 100;
 return 0;
}
