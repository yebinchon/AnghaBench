
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int sdma_busy; } ;


 int atomic_dec_and_test (int *) ;

__attribute__((used)) static inline int iowait_sdma_dec(struct iowait *wait)
{
 if (!wait)
  return 0;
 return atomic_dec_and_test(&wait->sdma_busy);
}
