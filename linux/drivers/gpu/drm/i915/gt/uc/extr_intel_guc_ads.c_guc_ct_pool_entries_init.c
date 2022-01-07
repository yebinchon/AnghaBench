
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct guc_ct_pool_entry {int dummy; } ;


 int memset (struct guc_ct_pool_entry*,int ,int) ;

__attribute__((used)) static void guc_ct_pool_entries_init(struct guc_ct_pool_entry *pool, u32 num)
{
 memset(pool, 0, num * sizeof(*pool));
}
