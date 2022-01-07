
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int root; } ;
struct writeset {TYPE_1__ md; int bits; } ;
struct dm_disk_bitset {int dummy; } ;


 int dm_bitset_set_bit (struct dm_disk_bitset*,int ,int ,int *) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static int writeset_test_and_set(struct dm_disk_bitset *info,
     struct writeset *ws, uint32_t block)
{
 int r;

 if (!test_and_set_bit(block, ws->bits)) {
  r = dm_bitset_set_bit(info, ws->md.root, block, &ws->md.root);
  if (r) {

   return r;
  }

  return 0;
 }

 return 1;
}
