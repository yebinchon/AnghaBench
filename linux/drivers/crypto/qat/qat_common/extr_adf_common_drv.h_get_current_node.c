
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_smp_processor_id () ;
 int topology_physical_package_id (int ) ;

__attribute__((used)) static inline int get_current_node(void)
{
 return topology_physical_package_id(raw_smp_processor_id());
}
