
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct ad7606_state {int lock; TYPE_1__* bops; } ;
struct TYPE_2__ {int (* reg_read ) (struct ad7606_state*,unsigned int) ;int (* reg_write ) (struct ad7606_state*,unsigned int,unsigned int) ;} ;


 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad7606_state*,unsigned int) ;
 int stub2 (struct ad7606_state*,unsigned int,unsigned int) ;

__attribute__((used)) static int ad7606_reg_access(struct iio_dev *indio_dev,
        unsigned int reg,
        unsigned int writeval,
        unsigned int *readval)
{
 struct ad7606_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);
 if (readval) {
  ret = st->bops->reg_read(st, reg);
  if (ret < 0)
   goto err_unlock;
  *readval = ret;
  ret = 0;
 } else {
  ret = st->bops->reg_write(st, reg, writeval);
 }
err_unlock:
 mutex_unlock(&st->lock);
 return ret;
}
