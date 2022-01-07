
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_mount_matrix {int dummy; } ;
struct device {int dummy; } ;


 int dev_info (struct device const*,char*) ;
 struct iio_mount_matrix iio_mount_idmatrix ;

__attribute__((used)) static int iio_setup_mount_idmatrix(const struct device *dev,
        struct iio_mount_matrix *matrix)
{
 *matrix = iio_mount_idmatrix;
 dev_info(dev, "mounting matrix not found: using identity...\n");
 return 0;
}
