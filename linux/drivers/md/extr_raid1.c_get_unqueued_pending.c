
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int * nr_queued; int * nr_pending; int nr_sync_pending; } ;


 int BARRIER_BUCKETS_NR ;
 int atomic_read (int *) ;

__attribute__((used)) static int get_unqueued_pending(struct r1conf *conf)
{
 int idx, ret;

 ret = atomic_read(&conf->nr_sync_pending);
 for (idx = 0; idx < BARRIER_BUCKETS_NR; idx++)
  ret += atomic_read(&conf->nr_pending[idx]) -
   atomic_read(&conf->nr_queued[idx]);

 return ret;
}
