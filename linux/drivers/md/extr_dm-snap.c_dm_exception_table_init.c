
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hlist_bl_head {int dummy; } ;
struct dm_exception_table {unsigned int hash_shift; int hash_mask; scalar_t__ table; } ;


 int ENOMEM ;
 int INIT_HLIST_BL_HEAD (scalar_t__) ;
 scalar_t__ dm_vcalloc (int,int) ;

__attribute__((used)) static int dm_exception_table_init(struct dm_exception_table *et,
       uint32_t size, unsigned hash_shift)
{
 unsigned int i;

 et->hash_shift = hash_shift;
 et->hash_mask = size - 1;
 et->table = dm_vcalloc(size, sizeof(struct hlist_bl_head));
 if (!et->table)
  return -ENOMEM;

 for (i = 0; i < size; i++)
  INIT_HLIST_BL_HEAD(et->table + i);

 return 0;
}
