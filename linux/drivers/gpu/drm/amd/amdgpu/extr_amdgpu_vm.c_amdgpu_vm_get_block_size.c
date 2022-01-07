
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned int uint32_t ;


 int ilog2 (int) ;

__attribute__((used)) static uint32_t amdgpu_vm_get_block_size(uint64_t vm_size)
{

 unsigned bits = ilog2(vm_size) + 18;



 if (vm_size <= 8)
  return (bits - 9);
 else
  return ((bits + 3) / 2);
}
