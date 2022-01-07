
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int* rx; int lock; } ;
struct iio_dev {int dummy; } ;


 int SCA3000_REG_BUF_COUNT_ADDR ;
 int SCA3000_REG_INT_STATUS_HALF ;
 int SCA3000_REG_RING_OUT_ADDR ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers (struct iio_dev*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int*,int) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;

__attribute__((used)) static void sca3000_ring_int_process(u8 val, struct iio_dev *indio_dev)
{
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret, i, num_available;

 mutex_lock(&st->lock);

 if (val & SCA3000_REG_INT_STATUS_HALF) {
  ret = sca3000_read_data_short(st, SCA3000_REG_BUF_COUNT_ADDR,
           1);
  if (ret)
   goto error_ret;
  num_available = st->rx[0];




  ret = sca3000_read_data(st, SCA3000_REG_RING_OUT_ADDR, st->rx,
     num_available * 2);
  if (ret)
   goto error_ret;
  for (i = 0; i < num_available / 3; i++) {







   iio_push_to_buffers(indio_dev, st->rx + i * 3 * 2);
  }
 }
error_ret:
 mutex_unlock(&st->lock);
}
