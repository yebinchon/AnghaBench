
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;


 int ndelay (int) ;

__attribute__((used)) static void stm32_hwspinlock_relax(struct hwspinlock *lock)
{
 ndelay(50);
}
