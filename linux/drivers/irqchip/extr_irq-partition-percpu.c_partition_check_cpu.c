
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partition_desc {TYPE_1__* parts; } ;
struct TYPE_2__ {int mask; } ;


 int cpumask_test_cpu (unsigned int,int *) ;

__attribute__((used)) static bool partition_check_cpu(struct partition_desc *part,
    unsigned int cpu, unsigned int hwirq)
{
 return cpumask_test_cpu(cpu, &part->parts[hwirq].mask);
}
