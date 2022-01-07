
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int wait_barrier; int nr_sync_pending; int * barrier; } ;
typedef int sector_t ;


 int BUG_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int sector_to_idx (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void lower_barrier(struct r1conf *conf, sector_t sector_nr)
{
 int idx = sector_to_idx(sector_nr);

 BUG_ON(atomic_read(&conf->barrier[idx]) <= 0);

 atomic_dec(&conf->barrier[idx]);
 atomic_dec(&conf->nr_sync_pending);
 wake_up(&conf->wait_barrier);
}
