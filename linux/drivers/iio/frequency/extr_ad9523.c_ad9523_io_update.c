
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int AD9523_IO_UPDATE ;
 int AD9523_IO_UPDATE_EN ;
 int ad9523_write (struct iio_dev*,int ,int ) ;

__attribute__((used)) static int ad9523_io_update(struct iio_dev *indio_dev)
{
 return ad9523_write(indio_dev, AD9523_IO_UPDATE, AD9523_IO_UPDATE_EN);
}
