
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dm_oblock_t ;
typedef int __le64 ;


 unsigned int FLAGS_MASK ;
 int cpu_to_le64 (int) ;
 int from_oblock (int ) ;

__attribute__((used)) static __le64 pack_value(dm_oblock_t block, unsigned flags)
{
 uint64_t value = from_oblock(block);
 value <<= 16;
 value = value | (flags & FLAGS_MASK);
 return cpu_to_le64(value);
}
