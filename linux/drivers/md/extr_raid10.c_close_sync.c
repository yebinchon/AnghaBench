
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int r10buf_pool; } ;


 int allow_barrier (struct r10conf*) ;
 int mempool_exit (int *) ;
 int wait_barrier (struct r10conf*) ;

__attribute__((used)) static void close_sync(struct r10conf *conf)
{
 wait_barrier(conf);
 allow_barrier(conf);

 mempool_exit(&conf->r10buf_pool);
}
