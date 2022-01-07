
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_if_no_space; } ;
struct pool {int pool_md; TYPE_2__* ti; TYPE_1__ pf; } ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;
struct TYPE_4__ {int table; } ;


 int DMINFO (char*,int ,char const*,char*) ;
 int PM_OUT_OF_DATA_SPACE ;
 int dm_device_name (int ) ;
 int dm_table_event (int ) ;
 int get_pool_mode (struct pool*) ;

__attribute__((used)) static void notify_of_pool_mode_change(struct pool *pool)
{
 const char *descs[] = {
  "write",
  "out-of-data-space",
  "read-only",
  "read-only",
  "fail"
 };
 const char *extra_desc = ((void*)0);
 enum pool_mode mode = get_pool_mode(pool);

 if (mode == PM_OUT_OF_DATA_SPACE) {
  if (!pool->pf.error_if_no_space)
   extra_desc = " (queue IO)";
  else
   extra_desc = " (error IO)";
 }

 dm_table_event(pool->ti->table);
 DMINFO("%s: switching pool to %s%s mode",
        dm_device_name(pool->pool_md),
        descs[(int)mode], extra_desc ? : "");
}
