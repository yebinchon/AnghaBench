
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
struct gp8psk_fe_state {int priv; TYPE_1__* ops; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ (* out ) (int ,int ,int,int ,int *,int ) ;} ;


 int EINVAL ;
 int SET_DN_SWITCH ;
 int SET_LNB_VOLTAGE ;
 scalar_t__ stub1 (int ,int ,unsigned long,int ,int *,int ) ;
 scalar_t__ stub2 (int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_fe_send_legacy_dish_cmd (struct dvb_frontend* fe, unsigned long sw_cmd)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;
 u8 cmd = sw_cmd & 0x7f;

 if (st->ops->out(st->priv, SET_DN_SWITCH, cmd, 0, ((void*)0), 0))
  return -EINVAL;

 if (st->ops->out(st->priv, SET_LNB_VOLTAGE, !!(sw_cmd & 0x80),
   0, ((void*)0), 0))
  return -EINVAL;

 return 0;
}
