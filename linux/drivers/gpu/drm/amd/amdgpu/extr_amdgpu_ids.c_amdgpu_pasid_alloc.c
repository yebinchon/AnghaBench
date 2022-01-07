
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int amdgpu_pasid_ida ;
 int ida_simple_get (int *,unsigned int,unsigned int,int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int trace_amdgpu_pasid_allocated (int) ;

int amdgpu_pasid_alloc(unsigned int bits)
{
 int pasid = -EINVAL;

 for (bits = min(bits, 31U); bits > 0; bits--) {
  pasid = ida_simple_get(&amdgpu_pasid_ida,
           1U << (bits - 1), 1U << bits,
           GFP_KERNEL);
  if (pasid != -ENOSPC)
   break;
 }

 if (pasid >= 0)
  trace_amdgpu_pasid_allocated(pasid);

 return pasid;
}
