
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int sdma_busy; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int iowait_sdma_pending(struct iowait *wait)
{
 return atomic_read(&wait->sdma_busy);
}
