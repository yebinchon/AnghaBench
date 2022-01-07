
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spinlock; int mode; } ;


 int etm4_disable_hw (TYPE_1__*) ;
 TYPE_1__** etmdrvdata ;
 scalar_t__ local_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int etm4_dying_cpu(unsigned int cpu)
{
 if (!etmdrvdata[cpu])
  return 0;

 spin_lock(&etmdrvdata[cpu]->spinlock);
 if (local_read(&etmdrvdata[cpu]->mode))
  etm4_disable_hw(etmdrvdata[cpu]);
 spin_unlock(&etmdrvdata[cpu]->spinlock);
 return 0;
}
