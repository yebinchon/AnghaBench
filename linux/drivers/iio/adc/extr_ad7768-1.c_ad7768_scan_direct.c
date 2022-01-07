
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7768_state {int completion; } ;


 int AD7768_CONTINUOUS ;
 int AD7768_ONE_SHOT ;
 int AD7768_REG_ADC_DATA ;
 int ETIMEDOUT ;
 int ad7768_set_mode (struct ad7768_state*,int ) ;
 int ad7768_spi_reg_read (struct ad7768_state*,int ,int) ;
 struct ad7768_state* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ad7768_scan_direct(struct iio_dev *indio_dev)
{
 struct ad7768_state *st = iio_priv(indio_dev);
 int readval, ret;

 reinit_completion(&st->completion);

 ret = ad7768_set_mode(st, AD7768_ONE_SHOT);
 if (ret < 0)
  return ret;

 ret = wait_for_completion_timeout(&st->completion,
       msecs_to_jiffies(1000));
 if (!ret)
  return -ETIMEDOUT;

 readval = ad7768_spi_reg_read(st, AD7768_REG_ADC_DATA, 3);
 if (readval < 0)
  return readval;




 ret = ad7768_set_mode(st, AD7768_CONTINUOUS);
 if (ret < 0)
  return ret;

 return readval;
}
