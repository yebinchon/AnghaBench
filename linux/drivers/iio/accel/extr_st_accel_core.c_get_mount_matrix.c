
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_data {struct iio_mount_matrix const* mount_matrix; } ;
struct iio_mount_matrix {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 struct st_sensor_data* iio_priv (struct iio_dev const*) ;

__attribute__((used)) static const struct iio_mount_matrix *
get_mount_matrix(const struct iio_dev *indio_dev,
   const struct iio_chan_spec *chan)
{
 struct st_sensor_data *adata = iio_priv(indio_dev);

 return adata->mount_matrix;
}
