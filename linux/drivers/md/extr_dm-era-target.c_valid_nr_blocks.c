
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long dm_block_t ;



__attribute__((used)) static bool valid_nr_blocks(dm_block_t n)
{




 return n < (1ull << 31);
}
