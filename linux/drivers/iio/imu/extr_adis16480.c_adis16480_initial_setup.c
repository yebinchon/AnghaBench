
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint16_t ;
struct iio_dev {int dev; int name; } ;
struct adis16480 {int adis; } ;


 int ADIS16480_REG_GLOB_CMD ;
 int ADIS16480_REG_PROD_ID ;
 int BIT (int) ;
 int EINVAL ;
 int adis_check_status (int *) ;
 int adis_read_reg_16 (int *,int ,unsigned int*) ;
 int adis_reset (int *) ;
 int adis_write_reg_16 (int *,int ,int ) ;
 int dev_warn (int *,char*,unsigned int,unsigned int) ;
 struct adis16480* iio_priv (struct iio_dev*) ;
 int msleep (int) ;
 int sscanf (int ,char*,unsigned int*) ;

__attribute__((used)) static int adis16480_initial_setup(struct iio_dev *indio_dev)
{
 struct adis16480 *st = iio_priv(indio_dev);
 uint16_t prod_id;
 unsigned int device_id;
 int ret;

 adis_reset(&st->adis);
 msleep(70);

 ret = adis_write_reg_16(&st->adis, ADIS16480_REG_GLOB_CMD, BIT(1));
 if (ret)
  return ret;
 msleep(30);

 ret = adis_check_status(&st->adis);
 if (ret)
  return ret;

 ret = adis_read_reg_16(&st->adis, ADIS16480_REG_PROD_ID, &prod_id);
 if (ret)
  return ret;

 ret = sscanf(indio_dev->name, "adis%u\n", &device_id);
 if (ret != 1)
  return -EINVAL;

 if (prod_id != device_id)
  dev_warn(&indio_dev->dev, "Device ID(%u) and product ID(%u) do not match.",
    device_id, prod_id);

 return 0;
}
