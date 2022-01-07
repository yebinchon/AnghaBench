
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_to_node (int ) ;
 int raw_smp_processor_id () ;

int zip_get_node_id(void)
{
 return cpu_to_node(raw_smp_processor_id());
}
