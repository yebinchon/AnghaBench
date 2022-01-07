
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int sdma_busy; } ;


 int atomic_add (int,int *) ;

__attribute__((used)) static inline void iowait_sdma_add(struct iowait *wait, int count)
{
 atomic_add(count, &wait->sdma_busy);
}
