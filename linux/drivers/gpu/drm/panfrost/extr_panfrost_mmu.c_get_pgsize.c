
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SZ_2M ;
 size_t SZ_4K ;

__attribute__((used)) static size_t get_pgsize(u64 addr, size_t size)
{
 if (addr & (SZ_2M - 1) || size < SZ_2M)
  return SZ_4K;

 return SZ_2M;
}
