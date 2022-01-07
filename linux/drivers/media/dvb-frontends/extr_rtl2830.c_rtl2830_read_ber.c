
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl2830_dev {scalar_t__ post_bit_error; scalar_t__ post_bit_error_prev; } ;
struct i2c_client {int dummy; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;


 struct rtl2830_dev* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int rtl2830_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct i2c_client *client = fe->demodulator_priv;
 struct rtl2830_dev *dev = i2c_get_clientdata(client);

 *ber = (dev->post_bit_error - dev->post_bit_error_prev);
 dev->post_bit_error_prev = dev->post_bit_error;

 return 0;
}
