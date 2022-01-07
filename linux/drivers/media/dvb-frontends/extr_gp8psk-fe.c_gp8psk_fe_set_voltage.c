
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gp8psk_fe_state {int priv; TYPE_1__* ops; } ;
struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {scalar_t__ (* out ) (int ,int ,int,int ,int *,int ) ;} ;


 int EINVAL ;
 int SEC_VOLTAGE_18 ;
 int SET_LNB_VOLTAGE ;
 scalar_t__ stub1 (int ,int ,int,int ,int *,int ) ;

__attribute__((used)) static int gp8psk_fe_set_voltage(struct dvb_frontend *fe,
     enum fe_sec_voltage voltage)
{
 struct gp8psk_fe_state *st = fe->demodulator_priv;

 if (st->ops->out(st->priv, SET_LNB_VOLTAGE,
    voltage == SEC_VOLTAGE_18, 0, ((void*)0), 0)) {
  return -EINVAL;
 }
 return 0;
}
