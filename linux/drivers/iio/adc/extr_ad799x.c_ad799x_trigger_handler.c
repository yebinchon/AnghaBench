
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int* active_scan_mask; int trig; } ;
struct ad799x_state {int id; int config; int rx_buf; int transfer_size; int client; } ;
typedef int irqreturn_t ;


 int AD7997_8_READ_SEQUENCE ;
 int AD7998_CONV_RES_REG ;
 int AD799X_CHANNEL_SHIFT ;
 int IRQ_HANDLED ;
 int i2c_smbus_read_i2c_block_data (int ,int,int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad799x_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;

__attribute__((used)) static irqreturn_t ad799x_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ad799x_state *st = iio_priv(indio_dev);
 int b_sent;
 u8 cmd;

 switch (st->id) {
 case 135:
 case 131:
 case 128:
  cmd = st->config |
   (*indio_dev->active_scan_mask << AD799X_CHANNEL_SHIFT);
  break;
 case 134:
 case 133:
 case 132:
  cmd = (*indio_dev->active_scan_mask << AD799X_CHANNEL_SHIFT) |
   AD7998_CONV_RES_REG;
  break;
 case 130:
 case 129:
  cmd = AD7997_8_READ_SEQUENCE | AD7998_CONV_RES_REG;
  break;
 default:
  cmd = 0;
 }

 b_sent = i2c_smbus_read_i2c_block_data(st->client,
   cmd, st->transfer_size, st->rx_buf);
 if (b_sent < 0)
  goto out;

 iio_push_to_buffers_with_timestamp(indio_dev, st->rx_buf,
   iio_get_time_ns(indio_dev));
out:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
