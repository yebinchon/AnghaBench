
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noa1305_priv {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 struct noa1305_priv* iio_priv (struct iio_dev*) ;
 int noa1305_measure (struct noa1305_priv*) ;
 int noa1305_scale (struct noa1305_priv*,int*,int*) ;

__attribute__((used)) static int noa1305_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 int ret = -EINVAL;
 struct noa1305_priv *priv = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 128:
   ret = noa1305_measure(priv);
   if (ret < 0)
    return ret;
   *val = ret;
   return IIO_VAL_INT;
  default:
   break;
  }
  break;
 case 129:
  switch (chan->type) {
  case 128:
   return noa1305_scale(priv, val, val2);
  default:
   break;
  }
  break;
 default:
  break;
 }

 return ret;
}
