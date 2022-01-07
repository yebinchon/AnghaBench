
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
struct cxd2841er_config {int dummy; } ;


 int SYS_DVBS ;
 struct dvb_frontend* cxd2841er_attach (struct cxd2841er_config*,struct i2c_adapter*,int ) ;

struct dvb_frontend *cxd2841er_attach_s(struct cxd2841er_config *cfg,
     struct i2c_adapter *i2c)
{
 return cxd2841er_attach(cfg, i2c, SYS_DVBS);
}
