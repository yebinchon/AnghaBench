
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxsd9_state {int dev; } ;
struct iio_dev {int dummy; } ;


 struct kxsd9_state* iio_priv (struct iio_dev*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int kxsd9_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct kxsd9_state *st = iio_priv(indio_dev);

 pm_runtime_mark_last_busy(st->dev);
 pm_runtime_put_autosuspend(st->dev);

 return 0;
}
