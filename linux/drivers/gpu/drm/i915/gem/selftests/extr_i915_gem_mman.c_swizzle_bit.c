
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int BIT_ULL (unsigned int) ;

__attribute__((used)) static u64 swizzle_bit(unsigned int bit, u64 offset)
{
 return (offset & BIT_ULL(bit)) >> (bit - 6);
}
