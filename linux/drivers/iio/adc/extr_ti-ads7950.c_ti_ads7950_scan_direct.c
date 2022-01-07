
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ads7950_state {int single_tx; int single_rx; int slock; int scan_single_msg; int spi; } ;
struct iio_dev {int dummy; } ;


 int TI_ADS7950_CR_CHAN (unsigned int) ;
 int TI_ADS7950_MAN_CMD (int ) ;
 struct ti_ads7950_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ti_ads7950_scan_direct(struct iio_dev *indio_dev, unsigned int ch)
{
 struct ti_ads7950_state *st = iio_priv(indio_dev);
 int ret, cmd;

 mutex_lock(&st->slock);
 cmd = TI_ADS7950_MAN_CMD(TI_ADS7950_CR_CHAN(ch));
 st->single_tx = cmd;

 ret = spi_sync(st->spi, &st->scan_single_msg);
 if (ret)
  goto out;

 ret = st->single_rx;

out:
 mutex_unlock(&st->slock);

 return ret;
}
