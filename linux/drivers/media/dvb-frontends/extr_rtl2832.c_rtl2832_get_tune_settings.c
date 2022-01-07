
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl2832_dev {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend_tune_settings {int min_delay_ms; int step_size; int max_drift; } ;
struct TYPE_3__ {int frequency_stepsize_hz; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
struct dvb_frontend {TYPE_2__ ops; struct rtl2832_dev* demodulator_priv; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int rtl2832_get_tune_settings(struct dvb_frontend *fe,
 struct dvb_frontend_tune_settings *s)
{
 struct rtl2832_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;

 dev_dbg(&client->dev, "\n");
 s->min_delay_ms = 1000;
 s->step_size = fe->ops.info.frequency_stepsize_hz * 2;
 s->max_drift = (fe->ops.info.frequency_stepsize_hz * 2) + 1;
 return 0;
}
