
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {TYPE_1__* bdev; int disk; int suspend_lock; } ;
typedef scalar_t__ sector_t ;
typedef int loff_t ;
struct TYPE_2__ {int bd_inode; } ;


 int SECTOR_SHIFT ;
 int i_size_write (int ,int) ;
 int lockdep_assert_held (int *) ;
 int set_capacity (int ,scalar_t__) ;

__attribute__((used)) static void __set_size(struct mapped_device *md, sector_t size)
{
 lockdep_assert_held(&md->suspend_lock);

 set_capacity(md->disk, size);

 i_size_write(md->bdev->bd_inode, (loff_t)size << SECTOR_SHIFT);
}
