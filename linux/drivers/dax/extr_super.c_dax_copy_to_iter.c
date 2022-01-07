
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct dax_device {TYPE_1__* ops; } ;
typedef int pgoff_t ;
struct TYPE_2__ {size_t (* copy_to_iter ) (struct dax_device*,int ,void*,size_t,struct iov_iter*) ;} ;


 int dax_alive (struct dax_device*) ;
 size_t stub1 (struct dax_device*,int ,void*,size_t,struct iov_iter*) ;

size_t dax_copy_to_iter(struct dax_device *dax_dev, pgoff_t pgoff, void *addr,
  size_t bytes, struct iov_iter *i)
{
 if (!dax_alive(dax_dev))
  return 0;

 return dax_dev->ops->copy_to_iter(dax_dev, pgoff, addr, bytes, i);
}
