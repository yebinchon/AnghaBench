
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {TYPE_1__* bi_disk; } ;
struct TYPE_2__ {int sync_io; } ;


 int atomic_add (unsigned long,int *) ;

__attribute__((used)) static inline void md_sync_acct_bio(struct bio *bio, unsigned long nr_sectors)
{
 atomic_add(nr_sectors, &bio->bi_disk->sync_io);
}
