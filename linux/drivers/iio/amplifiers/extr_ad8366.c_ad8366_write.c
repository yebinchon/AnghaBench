
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; int num_channels; } ;
struct ad8366_state {int type; unsigned char* data; int spi; } ;





 unsigned char bitrev8 (unsigned char) ;
 int dev_err (int *,char*,int) ;
 struct ad8366_state* iio_priv (struct iio_dev*) ;
 int spi_write (int ,unsigned char*,int ) ;

__attribute__((used)) static int ad8366_write(struct iio_dev *indio_dev,
   unsigned char ch_a, unsigned char ch_b)
{
 struct ad8366_state *st = iio_priv(indio_dev);
 int ret;

 switch (st->type) {
 case 130:
  ch_a = bitrev8(ch_a & 0x3F);
  ch_b = bitrev8(ch_b & 0x3F);

  st->data[0] = ch_b >> 4;
  st->data[1] = (ch_b << 4) | (ch_a >> 2);
  break;
 case 129:
  st->data[0] = ch_a & 0x1F;
  break;
 case 128:
  st->data[0] = (ch_a & 0x3F);
  break;
 }

 ret = spi_write(st->spi, st->data, indio_dev->num_channels);
 if (ret < 0)
  dev_err(&indio_dev->dev, "write failed (%d)", ret);

 return ret;
}
