
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure_waitlist {int dummy; } ;


 int __closure_wake_up (struct closure_waitlist*) ;
 int smp_mb () ;

__attribute__((used)) static inline void closure_wake_up(struct closure_waitlist *list)
{

 smp_mb();
 __closure_wake_up(list);
}
