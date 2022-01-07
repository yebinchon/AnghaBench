
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pmd; } ;
typedef int dm_block_t ;


 int DMERR (char*,char const*) ;
 int PM_OUT_OF_METADATA_SPACE ;
 int dm_pool_get_free_metadata_block_count (int ,int *) ;
 int is_read_only (struct pool*) ;
 int set_pool_mode (struct pool*,int ) ;

__attribute__((used)) static void check_for_metadata_space(struct pool *pool)
{
 int r;
 const char *ooms_reason = ((void*)0);
 dm_block_t nr_free;

 r = dm_pool_get_free_metadata_block_count(pool->pmd, &nr_free);
 if (r)
  ooms_reason = "Could not get free metadata blocks";
 else if (!nr_free)
  ooms_reason = "No free metadata blocks";

 if (ooms_reason && !is_read_only(pool)) {
  DMERR("%s", ooms_reason);
  set_pool_mode(pool, PM_OUT_OF_METADATA_SPACE);
 }
}
