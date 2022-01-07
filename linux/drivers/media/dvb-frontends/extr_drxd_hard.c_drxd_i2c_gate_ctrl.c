
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int drxd_config_i2c (struct dvb_frontend*,int) ;

__attribute__((used)) static int drxd_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 return drxd_config_i2c(fe, enable);
}
