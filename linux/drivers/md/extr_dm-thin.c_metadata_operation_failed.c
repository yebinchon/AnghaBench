
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pool_md; } ;


 int DMERR_LIMIT (char*,int ,char const*,int) ;
 int PM_READ_ONLY ;
 int abort_transaction (struct pool*) ;
 int dm_device_name (int ) ;
 int set_pool_mode (struct pool*,int ) ;

__attribute__((used)) static void metadata_operation_failed(struct pool *pool, const char *op, int r)
{
 DMERR_LIMIT("%s: metadata operation '%s' failed: error = %d",
      dm_device_name(pool->pool_md), op, r);

 abort_transaction(pool);
 set_pool_mode(pool, PM_READ_ONLY);
}
