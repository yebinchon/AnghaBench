
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct cros_ec_sensors_core_state {struct cros_ec_device* ec; } ;
struct cros_ec_device {int dummy; } ;
typedef int s16 ;


 int EC_MEMMAP_ACC_STATUS ;
 int EC_MEMMAP_ACC_STATUS_BUSY_BIT ;
 int EC_MEMMAP_ACC_STATUS_SAMPLE_ID_MASK ;
 int EIO ;
 int cros_ec_sensors_cmd_read_u8 (struct cros_ec_device*,int ,int*) ;
 int cros_ec_sensors_read_data_unsafe (struct iio_dev*,unsigned long,int *) ;
 int cros_ec_sensors_read_until_not_busy (struct cros_ec_sensors_core_state*) ;
 struct cros_ec_sensors_core_state* iio_priv (struct iio_dev*) ;

int cros_ec_sensors_read_lpc(struct iio_dev *indio_dev,
        unsigned long scan_mask, s16 *data)
{
 struct cros_ec_sensors_core_state *st = iio_priv(indio_dev);
 struct cros_ec_device *ec = st->ec;
 u8 samp_id = 0xff, status = 0;
 int ret, attempts = 0;







 while ((status & (EC_MEMMAP_ACC_STATUS_BUSY_BIT |
     EC_MEMMAP_ACC_STATUS_SAMPLE_ID_MASK)) != samp_id) {

  if (attempts++ >= 5)
   return -EIO;


  ret = cros_ec_sensors_read_until_not_busy(st);
  if (ret < 0)
   return ret;





  samp_id = ret & EC_MEMMAP_ACC_STATUS_SAMPLE_ID_MASK;


  ret = cros_ec_sensors_read_data_unsafe(indio_dev, scan_mask,
             data);
  if (ret < 0)
   return ret;


  ret = cros_ec_sensors_cmd_read_u8(ec, EC_MEMMAP_ACC_STATUS,
        &status);
  if (ret < 0)
   return ret;
 }

 return 0;
}
