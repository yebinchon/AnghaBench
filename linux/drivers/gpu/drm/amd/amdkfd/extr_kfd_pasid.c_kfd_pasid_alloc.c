
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {scalar_t__ kfd2kgd; } ;


 int amdgpu_pasid_alloc (int ) ;
 scalar_t__ kfd2kgd ;
 scalar_t__ kfd_topology_enum_kfd_devices (unsigned int,struct kfd_dev**) ;
 int pasid_bits ;

unsigned int kfd_pasid_alloc(void)
{
 int r;


 if (!kfd2kgd) {
  struct kfd_dev *dev = ((void*)0);
  unsigned int i = 0;

  while ((kfd_topology_enum_kfd_devices(i, &dev)) == 0) {
   if (dev && dev->kfd2kgd) {
    kfd2kgd = dev->kfd2kgd;
    break;
   }
   i++;
  }

  if (!kfd2kgd)
   return 0;
 }

 r = amdgpu_pasid_alloc(pasid_bits);

 return r > 0 ? r : 0;
}
