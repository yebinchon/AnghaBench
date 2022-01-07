
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int r1buf_pool; } ;


 int BARRIER_BUCKETS_NR ;
 int _allow_barrier (struct r1conf*,int) ;
 int _wait_barrier (struct r1conf*,int) ;
 int mempool_exit (int *) ;

__attribute__((used)) static void close_sync(struct r1conf *conf)
{
 int idx;

 for (idx = 0; idx < BARRIER_BUCKETS_NR; idx++) {
  _wait_barrier(conf, idx);
  _allow_barrier(conf, idx);
 }

 mempool_exit(&conf->r1buf_pool);
}
