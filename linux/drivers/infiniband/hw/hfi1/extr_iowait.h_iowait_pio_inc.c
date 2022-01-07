
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int pio_busy; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void iowait_pio_inc(struct iowait *wait)
{
 atomic_inc(&wait->pio_busy);
}
