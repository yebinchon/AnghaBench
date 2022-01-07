
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packer_context {void* context; int nr_bits; int fn; } ;
struct dm_disk_bitset {int array_info; } ;
typedef int dm_block_t ;
typedef int bit_value_fn ;


 int dm_array_new (int *,int *,int ,int ,struct packer_context*) ;
 int dm_div_up (int ,int) ;
 int pack_bits ;

int dm_bitset_new(struct dm_disk_bitset *info, dm_block_t *root,
    uint32_t size, bit_value_fn fn, void *context)
{
 struct packer_context p;
 p.fn = fn;
 p.nr_bits = size;
 p.context = context;

 return dm_array_new(&info->array_info, root, dm_div_up(size, 64), pack_bits, &p);
}
