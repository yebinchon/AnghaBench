
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gp8psk_fe_state {int priv; TYPE_1__* ops; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;
struct TYPE_2__ {scalar_t__ (* out ) (int ,int ,int,int ,int *,int ) ;} ;


 int EINVAL ;
 int SEC_TONE_ON ;
 int SET_22KHZ_TONE ;
 scalar_t__ stub1 (int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_fe_set_tone(struct dvb_frontend *fe,
         enum fe_sec_tone_mode tone)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;

 if (st->ops->out(st->priv, SET_22KHZ_TONE,
    (tone == SEC_TONE_ON), 0, ((void*)0), 0)) {
  return -EINVAL;
 }
 return 0;
}
