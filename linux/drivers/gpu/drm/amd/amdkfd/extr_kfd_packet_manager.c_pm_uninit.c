
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_manager {int priv_queue; int lock; } ;


 int kernel_queue_uninit (int ) ;
 int mutex_destroy (int *) ;

void pm_uninit(struct packet_manager *pm)
{
 mutex_destroy(&pm->lock);
 kernel_queue_uninit(pm->priv_queue);
}
