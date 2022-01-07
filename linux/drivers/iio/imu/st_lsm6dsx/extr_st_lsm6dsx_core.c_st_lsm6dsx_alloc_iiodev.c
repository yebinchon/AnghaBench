
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_lsm6dsx_sensor {int id; int watermark; int name; int gain; int odr; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {TYPE_7__* settings; int dev; } ;
struct TYPE_8__ {int parent; } ;
struct iio_dev {int name; int * info; int num_channels; int channels; int available_scan_masks; TYPE_1__ dev; int modes; } ;
typedef enum st_lsm6dsx_sensor_id { ____Placeholder_st_lsm6dsx_sensor_id } st_lsm6dsx_sensor_id ;
struct TYPE_14__ {TYPE_6__* fs_table; TYPE_4__* odr_table; TYPE_2__* channels; } ;
struct TYPE_13__ {TYPE_5__* fs_avl; } ;
struct TYPE_12__ {int gain; } ;
struct TYPE_11__ {TYPE_3__* odr_avl; } ;
struct TYPE_10__ {int hz; } ;
struct TYPE_9__ {int len; int chan; } ;


 int INDIO_DIRECT_MODE ;


 struct iio_dev* devm_iio_device_alloc (int ,int) ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int scnprintf (int ,int,char*,char const*) ;
 int st_lsm6dsx_acc_info ;
 int st_lsm6dsx_available_scan_masks ;
 int st_lsm6dsx_gyro_info ;

__attribute__((used)) static struct iio_dev *st_lsm6dsx_alloc_iiodev(struct st_lsm6dsx_hw *hw,
            enum st_lsm6dsx_sensor_id id,
            const char *name)
{
 struct st_lsm6dsx_sensor *sensor;
 struct iio_dev *iio_dev;

 iio_dev = devm_iio_device_alloc(hw->dev, sizeof(*sensor));
 if (!iio_dev)
  return ((void*)0);

 iio_dev->modes = INDIO_DIRECT_MODE;
 iio_dev->dev.parent = hw->dev;
 iio_dev->available_scan_masks = st_lsm6dsx_available_scan_masks;
 iio_dev->channels = hw->settings->channels[id].chan;
 iio_dev->num_channels = hw->settings->channels[id].len;

 sensor = iio_priv(iio_dev);
 sensor->id = id;
 sensor->hw = hw;
 sensor->odr = hw->settings->odr_table[id].odr_avl[0].hz;
 sensor->gain = hw->settings->fs_table[id].fs_avl[0].gain;
 sensor->watermark = 1;

 switch (id) {
 case 129:
  iio_dev->info = &st_lsm6dsx_acc_info;
  scnprintf(sensor->name, sizeof(sensor->name), "%s_accel",
     name);
  break;
 case 128:
  iio_dev->info = &st_lsm6dsx_gyro_info;
  scnprintf(sensor->name, sizeof(sensor->name), "%s_gyro",
     name);
  break;
 default:
  return ((void*)0);
 }
 iio_dev->name = sensor->name;

 return iio_dev;
}
