
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int sdma_busy; int wait_dma; } ;


 int atomic_read (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline void iowait_sdma_drain(struct iowait *wait)
{
 wait_event(wait->wait_dma, !atomic_read(&wait->sdma_busy));
}
