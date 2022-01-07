
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int input; } ;
struct dm_cache_migration {TYPE_1__ k; } ;


 int invalidate_complete (struct dm_cache_migration*,int) ;
 struct dm_cache_migration* ws_to_mg (struct work_struct*) ;

__attribute__((used)) static void invalidate_completed(struct work_struct *ws)
{
 struct dm_cache_migration *mg = ws_to_mg(ws);
 invalidate_complete(mg, !mg->k.input);
}
