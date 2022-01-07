
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amdgpu_pasid_ida ;
 int ida_simple_remove (int *,unsigned int) ;
 int trace_amdgpu_pasid_freed (unsigned int) ;

void amdgpu_pasid_free(unsigned int pasid)
{
 trace_amdgpu_pasid_freed(pasid);
 ida_simple_remove(&amdgpu_pasid_ida, pasid);
}
