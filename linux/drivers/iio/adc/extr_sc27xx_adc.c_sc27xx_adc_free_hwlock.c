
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwspinlock {int dummy; } ;


 int hwspin_lock_free (struct hwspinlock*) ;

__attribute__((used)) static void sc27xx_adc_free_hwlock(void *_data)
{
 struct hwspinlock *hwlock = _data;

 hwspin_lock_free(hwlock);
}
