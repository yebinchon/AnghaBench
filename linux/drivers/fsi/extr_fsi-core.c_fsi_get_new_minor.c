
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_device {int slave; } ;
typedef enum fsi_dev_type { ____Placeholder_fsi_dev_type } fsi_dev_type ;
typedef int dev_t ;


 int __fsi_get_new_minor (int ,int,int *,int*) ;

int fsi_get_new_minor(struct fsi_device *fdev, enum fsi_dev_type type,
        dev_t *out_dev, int *out_index)
{
 return __fsi_get_new_minor(fdev->slave, type, out_dev, out_index);
}
