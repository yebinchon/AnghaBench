
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct grts_state {int iio_cb; } ;


 int iio_channel_stop_all_cb (int ) ;
 struct grts_state* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void grts_close(struct input_dev *dev)
{
 struct grts_state *st = input_get_drvdata(dev);

 iio_channel_stop_all_cb(st->iio_cb);
}
