
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max11100_state {int* buffer; int spi; } ;
struct iio_dev {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 struct max11100_state* iio_priv (struct iio_dev*) ;
 int spi_read (int ,int*,int) ;

__attribute__((used)) static int max11100_read_single(struct iio_dev *indio_dev, int *val)
{
 int ret;
 struct max11100_state *state = iio_priv(indio_dev);

 ret = spi_read(state->spi, state->buffer, sizeof(state->buffer));
 if (ret) {
  dev_err(&indio_dev->dev, "SPI transfer failed\n");
  return ret;
 }


 if (state->buffer[0]) {
  dev_err(&indio_dev->dev, "Invalid value: buffer[0] != 0\n");
  return -EINVAL;
 }

 *val = (state->buffer[1] << 8) | state->buffer[2];

 return 0;
}
