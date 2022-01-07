
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ input; } ;
struct dm_cache_migration {TYPE_1__ k; } ;


 int mg_complete (struct dm_cache_migration*,int) ;
 struct dm_cache_migration* ws_to_mg (struct work_struct*) ;

__attribute__((used)) static void mg_success(struct work_struct *ws)
{
 struct dm_cache_migration *mg = ws_to_mg(ws);
 mg_complete(mg, mg->k.input == 0);
}
