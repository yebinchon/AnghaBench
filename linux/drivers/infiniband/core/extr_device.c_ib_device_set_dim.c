
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int use_cq_dim; } ;


 int EINVAL ;

int ib_device_set_dim(struct ib_device *ibdev, u8 use_dim)
{
 if (use_dim > 1)
  return -EINVAL;
 ibdev->use_cq_dim = use_dim;

 return 0;
}
