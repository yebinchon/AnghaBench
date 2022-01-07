
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct log_writes_c {TYPE_2__* logdev; } ;
typedef int sector_t ;
struct TYPE_4__ {TYPE_1__* bdev; } ;
struct TYPE_3__ {int bd_inode; } ;


 int SECTOR_SHIFT ;
 int i_size_read (int ) ;

__attribute__((used)) static inline sector_t logdev_last_sector(struct log_writes_c *lc)
{
 return i_size_read(lc->logdev->bdev->bd_inode) >> SECTOR_SHIFT;
}
