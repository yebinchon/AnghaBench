
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dm_oblock_t ;
typedef int __le64 ;


 int FLAGS_MASK ;
 int le64_to_cpu (int ) ;
 int to_oblock (int) ;

__attribute__((used)) static void unpack_value(__le64 value_le, dm_oblock_t *block, unsigned *flags)
{
 uint64_t value = le64_to_cpu(value_le);
 uint64_t b = value >> 16;
 *block = to_oblock(b);
 *flags = value & FLAGS_MASK;
}
