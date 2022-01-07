
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int ALIGN (scalar_t__,int ) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static int pages_in_range(u64 address, u32 length)
{
 return (ALIGN(address + length, PAGE_SIZE) -
  (address & PAGE_MASK)) >> PAGE_SHIFT;
}
