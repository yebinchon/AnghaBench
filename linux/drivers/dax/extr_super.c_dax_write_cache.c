
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int flags; } ;


 int DAXDEV_WRITE_CACHE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

void dax_write_cache(struct dax_device *dax_dev, bool wc)
{
 if (wc)
  set_bit(DAXDEV_WRITE_CACHE, &dax_dev->flags);
 else
  clear_bit(DAXDEV_WRITE_CACHE, &dax_dev->flags);
}
