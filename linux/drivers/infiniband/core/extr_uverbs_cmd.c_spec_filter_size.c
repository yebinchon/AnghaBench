
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 scalar_t__ memchr_inv (void const*,int ,scalar_t__) ;

__attribute__((used)) static ssize_t spec_filter_size(const void *kern_spec_filter, u16 kern_filter_size,
    u16 ib_real_filter_sz)
{





 if (kern_filter_size > ib_real_filter_sz) {
  if (memchr_inv(kern_spec_filter +
          ib_real_filter_sz, 0,
          kern_filter_size - ib_real_filter_sz))
   return -EINVAL;
  return ib_real_filter_sz;
 }
 return kern_filter_size;
}
