
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct envelope {int invert; } ;
typedef int ssize_t ;


 struct envelope* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t envelope_show_invert(struct iio_dev *indio_dev,
        uintptr_t private,
        struct iio_chan_spec const *ch, char *buf)
{
 struct envelope *env = iio_priv(indio_dev);

 return sprintf(buf, "%u\n", env->invert);
}
