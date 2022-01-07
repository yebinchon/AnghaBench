
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amdgpu_pasid_free (unsigned int) ;
 scalar_t__ kfd2kgd ;

void kfd_pasid_free(unsigned int pasid)
{
 if (kfd2kgd)
  amdgpu_pasid_free(pasid);
}
