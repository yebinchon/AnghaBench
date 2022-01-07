
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_topology_device {int gpu; } ;


 int dmi_walk (int ,struct kfd_topology_device*) ;
 int find_system_memory ;

__attribute__((used)) static void kfd_add_non_crat_information(struct kfd_topology_device *kdev)
{

 if (!kdev->gpu) {

  dmi_walk(find_system_memory, kdev);
 }

}
