
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
typedef int int64_t ;


 int SSP_GYROSCOPE_SIZE ;
 int ssp_common_process_data (struct iio_dev*,void*,int ,int ) ;

__attribute__((used)) static int ssp_process_gyro_data(struct iio_dev *indio_dev, void *buf,
     int64_t timestamp)
{
 return ssp_common_process_data(indio_dev, buf, SSP_GYROSCOPE_SIZE,
           timestamp);
}
