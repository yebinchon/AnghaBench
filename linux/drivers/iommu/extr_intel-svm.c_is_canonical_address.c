
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int __VIRTUAL_MASK_SHIFT ;

__attribute__((used)) static bool is_canonical_address(u64 addr)
{
 int shift = 64 - (__VIRTUAL_MASK_SHIFT + 1);
 long saddr = (long) addr;

 return (((saddr << shift) >> shift) == saddr);
}
