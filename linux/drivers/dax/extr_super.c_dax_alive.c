
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_device {int flags; } ;


 int DAXDEV_ALIVE ;
 int dax_srcu ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int *) ;

bool dax_alive(struct dax_device *dax_dev)
{
 lockdep_assert_held(&dax_srcu);
 return test_bit(DAXDEV_ALIVE, &dax_dev->flags);
}
