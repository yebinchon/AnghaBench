
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_unlock; int spinlock; int mode; } ;


 int etm_enable_hw (TYPE_1__*) ;
 int etm_os_unlock (TYPE_1__*) ;
 TYPE_1__** etmdrvdata ;
 scalar_t__ local_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int etm_starting_cpu(unsigned int cpu)
{
 if (!etmdrvdata[cpu])
  return 0;

 spin_lock(&etmdrvdata[cpu]->spinlock);
 if (!etmdrvdata[cpu]->os_unlock) {
  etm_os_unlock(etmdrvdata[cpu]);
  etmdrvdata[cpu]->os_unlock = 1;
 }

 if (local_read(&etmdrvdata[cpu]->mode))
  etm_enable_hw(etmdrvdata[cpu]);
 spin_unlock(&etmdrvdata[cpu]->spinlock);
 return 0;
}
