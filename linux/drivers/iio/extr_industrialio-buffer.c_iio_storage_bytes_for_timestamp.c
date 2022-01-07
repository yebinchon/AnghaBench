
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int scan_index_timestamp; } ;


 unsigned int iio_storage_bytes_for_si (struct iio_dev*,int ) ;

__attribute__((used)) static unsigned int iio_storage_bytes_for_timestamp(struct iio_dev *indio_dev)
{
 return iio_storage_bytes_for_si(indio_dev,
     indio_dev->scan_index_timestamp);
}
