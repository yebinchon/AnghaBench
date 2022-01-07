
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int masklength; } ;
struct ad7298_state {unsigned short ext_ref; TYPE_1__* ring_xfer; int ring_msg; int * rx_buf; int * tx_buf; } ;
struct TYPE_2__ {int len; int cs_change; int * rx_buf; int * tx_buf; } ;


 int AD7298_CH (int ) ;
 int AD7298_MAX_CHAN ;
 unsigned short AD7298_WRITE ;
 int bitmap_weight (unsigned long const*,int ) ;
 int cpu_to_be16 (unsigned short) ;
 struct ad7298_state* iio_priv (struct iio_dev*) ;
 int spi_message_add_tail (TYPE_1__*,int *) ;
 int spi_message_init (int *) ;
 scalar_t__ test_bit (int,unsigned long const*) ;

__attribute__((used)) static int ad7298_update_scan_mode(struct iio_dev *indio_dev,
 const unsigned long *active_scan_mask)
{
 struct ad7298_state *st = iio_priv(indio_dev);
 int i, m;
 unsigned short command;
 int scan_count;


 scan_count = bitmap_weight(active_scan_mask, indio_dev->masklength);

 command = AD7298_WRITE | st->ext_ref;

 for (i = 0, m = AD7298_CH(0); i < AD7298_MAX_CHAN; i++, m >>= 1)
  if (test_bit(i, active_scan_mask))
   command |= m;

 st->tx_buf[0] = cpu_to_be16(command);


 st->ring_xfer[0].tx_buf = &st->tx_buf[0];
 st->ring_xfer[0].len = 2;
 st->ring_xfer[0].cs_change = 1;
 st->ring_xfer[1].tx_buf = &st->tx_buf[1];
 st->ring_xfer[1].len = 2;
 st->ring_xfer[1].cs_change = 1;

 spi_message_init(&st->ring_msg);
 spi_message_add_tail(&st->ring_xfer[0], &st->ring_msg);
 spi_message_add_tail(&st->ring_xfer[1], &st->ring_msg);

 for (i = 0; i < scan_count; i++) {
  st->ring_xfer[i + 2].rx_buf = &st->rx_buf[i];
  st->ring_xfer[i + 2].len = 2;
  st->ring_xfer[i + 2].cs_change = 1;
  spi_message_add_tail(&st->ring_xfer[i + 2], &st->ring_msg);
 }

 st->ring_xfer[i + 1].cs_change = 0;

 return 0;
}
