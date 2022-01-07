
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2830_dev {int sleeping; scalar_t__ fe_status; } ;
struct i2c_client {int dummy; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;


 struct rtl2830_dev* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int rtl2830_sleep(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->demodulator_priv;
 struct rtl2830_dev *dev = i2c_get_clientdata(client);

 dev->sleeping = 1;
 dev->fe_status = 0;

 return 0;
}
