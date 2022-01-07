
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int (* sdma_drained ) (struct iowait*) ;int wait_pio; int wait_dma; } ;


 int stub1 (struct iowait*) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void iowait_drain_wakeup(struct iowait *wait)
{
 wake_up(&wait->wait_dma);
 wake_up(&wait->wait_pio);
 if (wait->sdma_drained)
  wait->sdma_drained(wait);
}
