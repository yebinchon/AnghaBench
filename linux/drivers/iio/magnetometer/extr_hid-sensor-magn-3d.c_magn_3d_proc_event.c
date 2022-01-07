
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_ready; } ;
struct magn_3d_state {int iio_vals; TYPE_1__ magn_flux_attributes; } ;
struct iio_dev {int dev; } ;
struct hid_sensor_hub_device {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*) ;
 int hid_sensor_push_data (struct iio_dev*,int ) ;
 struct magn_3d_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int magn_3d_proc_event(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct magn_3d_state *magn_state = iio_priv(indio_dev);

 dev_dbg(&indio_dev->dev, "magn_3d_proc_event\n");
 if (atomic_read(&magn_state->magn_flux_attributes.data_ready))
  hid_sensor_push_data(indio_dev, magn_state->iio_vals);

 return 0;
}
