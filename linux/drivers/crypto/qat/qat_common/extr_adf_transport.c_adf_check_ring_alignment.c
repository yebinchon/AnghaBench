
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EFAULT ;

__attribute__((used)) static inline int adf_check_ring_alignment(uint64_t addr, uint64_t size)
{
 if (((size - 1) & addr) != 0)
  return -EFAULT;
 return 0;
}
