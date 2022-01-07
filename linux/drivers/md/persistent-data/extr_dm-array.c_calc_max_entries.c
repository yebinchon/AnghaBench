
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct array_block {int dummy; } ;



__attribute__((used)) static uint32_t calc_max_entries(size_t value_size, size_t size_of_block)
{
 return (size_of_block - sizeof(struct array_block)) / value_size;
}
