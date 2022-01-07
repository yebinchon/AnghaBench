
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csdev; int sticky_enable; scalar_t__ boot_enable; } ;


 int coresight_enable (int ) ;
 TYPE_1__** etmdrvdata ;

__attribute__((used)) static int etm4_online_cpu(unsigned int cpu)
{
 if (!etmdrvdata[cpu])
  return 0;

 if (etmdrvdata[cpu]->boot_enable && !etmdrvdata[cpu]->sticky_enable)
  coresight_enable(etmdrvdata[cpu]->csdev);
 return 0;
}
