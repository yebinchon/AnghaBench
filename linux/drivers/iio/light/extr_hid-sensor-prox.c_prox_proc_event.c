
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_ready; } ;
struct prox_state {int human_presence; TYPE_1__ common_attributes; } ;
struct iio_dev {int dev; } ;
struct hid_sensor_hub_device {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*) ;
 int hid_sensor_push_data (struct iio_dev*,int *,int) ;
 struct prox_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int prox_proc_event(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct prox_state *prox_state = iio_priv(indio_dev);

 dev_dbg(&indio_dev->dev, "prox_proc_event\n");
 if (atomic_read(&prox_state->common_attributes.data_ready))
  hid_sensor_push_data(indio_dev,
    &prox_state->human_presence,
    sizeof(prox_state->human_presence));

 return 0;
}
