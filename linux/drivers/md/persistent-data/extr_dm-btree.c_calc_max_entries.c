
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct node_header {int dummy; } ;



__attribute__((used)) static uint32_t calc_max_entries(size_t value_size, size_t block_size)
{
 uint32_t total, n;
 size_t elt_size = sizeof(uint64_t) + value_size;

 block_size -= sizeof(struct node_header);
 total = block_size / elt_size;
 n = total / 3;

 return 3 * n;
}
