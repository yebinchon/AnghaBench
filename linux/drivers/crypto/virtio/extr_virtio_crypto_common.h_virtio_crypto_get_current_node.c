
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_cpu () ;
 int put_cpu () ;
 int topology_physical_package_id (int) ;

__attribute__((used)) static inline int virtio_crypto_get_current_node(void)
{
 int cpu, node;

 cpu = get_cpu();
 node = topology_physical_package_id(cpu);
 put_cpu();

 return node;
}
