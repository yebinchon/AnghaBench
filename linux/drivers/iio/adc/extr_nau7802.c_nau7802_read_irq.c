
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nau7802_state {int last_value; TYPE_1__* client; int value_ok; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int ETIMEDOUT ;
 int IIO_VAL_INT ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct nau7802_state* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int nau7802_read_conversion (struct nau7802_state*) ;
 int nau7802_sync (struct nau7802_state*) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int nau7802_read_irq(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val)
{
 struct nau7802_state *st = iio_priv(indio_dev);
 int ret;

 reinit_completion(&st->value_ok);
 enable_irq(st->client->irq);

 nau7802_sync(st);


 ret = nau7802_read_conversion(st);
 if (ret < 0)
  goto read_chan_info_failure;


 ret = wait_for_completion_interruptible_timeout(&st->value_ok,
   msecs_to_jiffies(1000));
 if (ret == 0)
  ret = -ETIMEDOUT;

 if (ret < 0)
  goto read_chan_info_failure;

 disable_irq(st->client->irq);

 *val = st->last_value;

 return IIO_VAL_INT;

read_chan_info_failure:
 disable_irq(st->client->irq);

 return ret;
}
