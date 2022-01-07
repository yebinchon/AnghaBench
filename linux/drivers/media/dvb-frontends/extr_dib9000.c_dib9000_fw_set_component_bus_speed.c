
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int component_bus_speed; } ;



int dib9000_fw_set_component_bus_speed(struct dvb_frontend *fe, u16 speed)
{
 struct dib9000_state *state = fe->demodulator_priv;

 state->component_bus_speed = speed;
 return 0;
}
