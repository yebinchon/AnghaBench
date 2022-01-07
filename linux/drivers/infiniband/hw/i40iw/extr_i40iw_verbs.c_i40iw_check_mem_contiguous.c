
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t u32 ;



__attribute__((used)) static bool i40iw_check_mem_contiguous(u64 *arr, u32 npages, u32 pg_size)
{
 u32 pg_idx;

 for (pg_idx = 0; pg_idx < npages; pg_idx++) {
  if ((*arr + (pg_size * pg_idx)) != arr[pg_idx])
   return 0;
 }
 return 1;
}
