
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct block_device {TYPE_2__* bd_contains; } ;
struct TYPE_4__ {TYPE_1__* bd_disk; } ;
struct TYPE_3__ {int sync_io; } ;


 int atomic_add (unsigned long,int *) ;

__attribute__((used)) static inline void md_sync_acct(struct block_device *bdev, unsigned long nr_sectors)
{
 atomic_add(nr_sectors, &bdev->bd_contains->bd_disk->sync_io);
}
