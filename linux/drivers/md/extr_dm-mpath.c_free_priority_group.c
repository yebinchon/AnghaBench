
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path_selector {TYPE_1__* type; } ;
struct priority_group {int pgpaths; struct path_selector ps; } ;
struct dm_target {int dummy; } ;
struct TYPE_2__ {int (* destroy ) (struct path_selector*) ;} ;


 int dm_put_path_selector (TYPE_1__*) ;
 int free_pgpaths (int *,struct dm_target*) ;
 int kfree (struct priority_group*) ;
 int stub1 (struct path_selector*) ;

__attribute__((used)) static void free_priority_group(struct priority_group *pg,
    struct dm_target *ti)
{
 struct path_selector *ps = &pg->ps;

 if (ps->type) {
  ps->type->destroy(ps);
  dm_put_path_selector(ps->type);
 }

 free_pgpaths(&pg->pgpaths, ti);
 kfree(pg);
}
