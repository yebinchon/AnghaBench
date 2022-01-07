
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ll_disk {int ref_count_root; int ref_count_info; } ;
typedef int dm_block_t ;
typedef int __le32 ;


 int dm_btree_lookup (int *,int ,int *,int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int sm_ll_lookup_big_ref_count(struct ll_disk *ll, dm_block_t b,
          uint32_t *result)
{
 __le32 le_rc;
 int r;

 r = dm_btree_lookup(&ll->ref_count_info, ll->ref_count_root, &b, &le_rc);
 if (r < 0)
  return r;

 *result = le32_to_cpu(le_rc);

 return r;
}
