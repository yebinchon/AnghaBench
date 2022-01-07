
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sysinfo {int totalram; int mem_unit; } ;


 int si_meminfo (struct sysinfo*) ;

__attribute__((used)) static u32 get_memsize(void)
{
 struct sysinfo inf;

 si_meminfo(&inf);

 return inf.totalram * inf.mem_unit;
}
