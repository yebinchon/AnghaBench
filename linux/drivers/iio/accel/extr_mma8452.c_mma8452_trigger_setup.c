
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mma8452_data {TYPE_2__* client; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_trigger {int * ops; TYPE_1__ dev; } ;
struct iio_dev {struct iio_trigger* trig; int id; int name; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 struct iio_trigger* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_register (struct iio_trigger*) ;
 int iio_trigger_set_drvdata (struct iio_trigger*,struct iio_dev*) ;
 int mma8452_trigger_ops ;

__attribute__((used)) static int mma8452_trigger_setup(struct iio_dev *indio_dev)
{
 struct mma8452_data *data = iio_priv(indio_dev);
 struct iio_trigger *trig;
 int ret;

 trig = devm_iio_trigger_alloc(&data->client->dev, "%s-dev%d",
          indio_dev->name,
          indio_dev->id);
 if (!trig)
  return -ENOMEM;

 trig->dev.parent = &data->client->dev;
 trig->ops = &mma8452_trigger_ops;
 iio_trigger_set_drvdata(trig, indio_dev);

 ret = iio_trigger_register(trig);
 if (ret)
  return ret;

 indio_dev->trig = trig;

 return 0;
}
