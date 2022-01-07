
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint64_t ;
typedef int dm_oblock_t ;
typedef int __le64 ;


 int memcpy (int *,void*,int) ;
 int unpack_value (int ,int *,unsigned int*) ;

__attribute__((used)) static int __dump_mapping(void *context, uint64_t cblock, void *leaf)
{
 int r = 0;
 __le64 value;
 dm_oblock_t oblock;
 unsigned flags;

 memcpy(&value, leaf, sizeof(value));
 unpack_value(value, &oblock, &flags);

 return r;
}
