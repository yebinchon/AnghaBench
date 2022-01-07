
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_mount_matrix {int rotation; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int rotation; } ;


 size_t ARRAY_SIZE (int ) ;
 int EINVAL ;
 int device_property_read_string_array (struct device*,char const*,int ,size_t) ;
 TYPE_1__ iio_mount_idmatrix ;
 int iio_setup_mount_idmatrix (struct device*,struct iio_mount_matrix*) ;

int iio_read_mount_matrix(struct device *dev, const char *propname,
     struct iio_mount_matrix *matrix)
{
 size_t len = ARRAY_SIZE(iio_mount_idmatrix.rotation);
 int err;

 err = device_property_read_string_array(dev, propname,
      matrix->rotation, len);
 if (err == len)
  return 0;

 if (err >= 0)

  return -EINVAL;

 if (err != -EINVAL)

  return err;


 return iio_setup_mount_idmatrix(dev, matrix);
}
