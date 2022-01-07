
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;
struct ad5360_state {unsigned int ctrl; } ;


 int AD5360_CMD_SPECIAL_FUNCTION ;
 int AD5360_REG_SF_CTRL ;
 unsigned int ad5360_write_unlocked (struct iio_dev*,int ,int ,unsigned int,int ) ;
 struct ad5360_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5360_update_ctrl(struct iio_dev *indio_dev, unsigned int set,
 unsigned int clr)
{
 struct ad5360_state *st = iio_priv(indio_dev);
 unsigned int ret;

 mutex_lock(&indio_dev->mlock);

 st->ctrl |= set;
 st->ctrl &= ~clr;

 ret = ad5360_write_unlocked(indio_dev, AD5360_CMD_SPECIAL_FUNCTION,
   AD5360_REG_SF_CTRL, st->ctrl, 0);

 mutex_unlock(&indio_dev->mlock);

 return ret;
}
