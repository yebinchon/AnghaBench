
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EINVAL ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int smp_length_check(u32 data_size, u32 request_len)
{
 if (unlikely(request_len < data_size))
  return -EINVAL;

 return 0;
}
