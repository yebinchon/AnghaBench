
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int wait_barrier; scalar_t__ array_freeze_pending; int nr_pending; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void allow_barrier(struct r10conf *conf)
{
 if ((atomic_dec_and_test(&conf->nr_pending)) ||
   (conf->array_freeze_pending))
  wake_up(&conf->wait_barrier);
}
