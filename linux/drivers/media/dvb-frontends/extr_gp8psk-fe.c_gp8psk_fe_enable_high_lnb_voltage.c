
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gp8psk_fe_state {int priv; TYPE_1__* ops; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;
struct TYPE_2__ {int (* out ) (int ,int ,long,int ,int *,int ) ;} ;


 int USE_EXTRA_VOLT ;
 int stub1 (int ,int ,long,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_fe_enable_high_lnb_voltage(struct dvb_frontend* fe, long onoff)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;

 return st->ops->out(st->priv, USE_EXTRA_VOLT, onoff, 0, ((void*)0), 0);
}
