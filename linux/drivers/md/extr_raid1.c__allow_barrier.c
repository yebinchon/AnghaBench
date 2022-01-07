
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int wait_barrier; int * nr_pending; } ;


 int atomic_dec (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void _allow_barrier(struct r1conf *conf, int idx)
{
 atomic_dec(&conf->nr_pending[idx]);
 wake_up(&conf->wait_barrier);
}
