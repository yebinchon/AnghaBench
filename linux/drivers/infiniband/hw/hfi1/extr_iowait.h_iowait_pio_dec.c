
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int pio_busy; } ;


 int atomic_dec_and_test (int *) ;

__attribute__((used)) static inline int iowait_pio_dec(struct iowait *wait)
{
 if (!wait)
  return 0;
 return atomic_dec_and_test(&wait->pio_busy);
}
