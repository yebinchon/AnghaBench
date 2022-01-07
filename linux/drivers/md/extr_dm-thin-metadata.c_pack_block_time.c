
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int dm_block_t ;



__attribute__((used)) static uint64_t pack_block_time(dm_block_t b, uint32_t t)
{
 return (b << 24) | t;
}
