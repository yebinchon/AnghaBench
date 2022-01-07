
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2_le ;
typedef int v1_le ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int __le64 ;


 int le64_to_cpu (int ) ;
 int memcpy (int *,void const*,int) ;
 int unpack_block_time (int ,scalar_t__*,int *) ;

__attribute__((used)) static int data_block_equal(void *context, const void *value1_le, const void *value2_le)
{
 __le64 v1_le, v2_le;
 uint64_t b1, b2;
 uint32_t t;

 memcpy(&v1_le, value1_le, sizeof(v1_le));
 memcpy(&v2_le, value2_le, sizeof(v2_le));
 unpack_block_time(le64_to_cpu(v1_le), &b1, &t);
 unpack_block_time(le64_to_cpu(v2_le), &b2, &t);

 return b1 == b2;
}
