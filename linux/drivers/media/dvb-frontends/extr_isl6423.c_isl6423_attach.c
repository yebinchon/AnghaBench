
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isl6423_dev {int reg_3; int reg_4; int verbose; struct i2c_adapter* i2c; struct isl6423_config const* config; } ;
struct isl6423_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int enable_high_lnb_voltage; int set_voltage; int release_sec; } ;
struct dvb_frontend {struct isl6423_dev* sec_priv; TYPE_1__ ops; } ;


 int GFP_KERNEL ;
 int isl6423_release ;
 scalar_t__ isl6423_set_current (struct dvb_frontend*) ;
 scalar_t__ isl6423_set_modulation (struct dvb_frontend*) ;
 int isl6423_set_voltage ;
 int isl6423_voltage_boost ;
 int kfree (struct isl6423_dev*) ;
 struct isl6423_dev* kzalloc (int,int ) ;
 int verbose ;

struct dvb_frontend *isl6423_attach(struct dvb_frontend *fe,
        struct i2c_adapter *i2c,
        const struct isl6423_config *config)
{
 struct isl6423_dev *isl6423;

 isl6423 = kzalloc(sizeof(struct isl6423_dev), GFP_KERNEL);
 if (!isl6423)
  return ((void*)0);

 isl6423->config = config;
 isl6423->i2c = i2c;
 fe->sec_priv = isl6423;


 isl6423->reg_3 = 0x02 << 5;

 isl6423->reg_4 = 0x03 << 5;

 if (isl6423_set_current(fe))
  goto exit;

 if (isl6423_set_modulation(fe))
  goto exit;

 fe->ops.release_sec = isl6423_release;
 fe->ops.set_voltage = isl6423_set_voltage;
 fe->ops.enable_high_lnb_voltage = isl6423_voltage_boost;
 isl6423->verbose = verbose;

 return fe;

exit:
 kfree(isl6423);
 fe->sec_priv = ((void*)0);
 return ((void*)0);
}
