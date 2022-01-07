
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pmd; int pool_md; } ;


 int DMERR (char*,char const*) ;
 int DMERR_LIMIT (char*,char const*) ;
 int PM_FAIL ;
 char* dm_device_name (int ) ;
 scalar_t__ dm_pool_abort_metadata (int ) ;
 scalar_t__ dm_pool_metadata_set_needs_check (int ) ;
 int set_pool_mode (struct pool*,int ) ;

__attribute__((used)) static void abort_transaction(struct pool *pool)
{
 const char *dev_name = dm_device_name(pool->pool_md);

 DMERR_LIMIT("%s: aborting current metadata transaction", dev_name);
 if (dm_pool_abort_metadata(pool->pmd)) {
  DMERR("%s: failed to abort metadata transaction", dev_name);
  set_pool_mode(pool, PM_FAIL);
 }

 if (dm_pool_metadata_set_needs_check(pool->pmd)) {
  DMERR("%s: failed to set 'needs_check' flag in metadata", dev_name);
  set_pool_mode(pool, PM_FAIL);
 }
}
