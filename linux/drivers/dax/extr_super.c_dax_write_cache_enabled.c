
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int flags; } ;


 int DAXDEV_WRITE_CACHE ;
 int test_bit (int ,int *) ;

bool dax_write_cache_enabled(struct dax_device *dax_dev)
{
 return test_bit(DAXDEV_WRITE_CACHE, &dax_dev->flags);
}
