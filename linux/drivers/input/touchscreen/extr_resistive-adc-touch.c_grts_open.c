
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct grts_state {int iio_cb; } ;


 int dev_err (int ,char*) ;
 int iio_channel_start_all_cb (int ) ;
 struct grts_state* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int grts_open(struct input_dev *dev)
{
 int error;
 struct grts_state *st = input_get_drvdata(dev);

 error = iio_channel_start_all_cb(st->iio_cb);
 if (error) {
  dev_err(dev->dev.parent, "failed to start callback buffer.\n");
  return error;
 }
 return 0;
}
