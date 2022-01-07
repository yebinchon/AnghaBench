
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int pio_busy; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int iowait_pio_pending(struct iowait *wait)
{
 return atomic_read(&wait->pio_busy);
}
