
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* type; } ;
struct priority_group {TYPE_2__ ps; } ;
struct pgpath {int dummy; } ;
struct multipath {int lock; struct pgpath* current_pgpath; int current_pg; } ;
struct dm_path {int dummy; } ;
struct TYPE_3__ {struct dm_path* (* select_path ) (TYPE_2__*,size_t) ;} ;


 int ENXIO ;
 struct pgpath* ERR_PTR (int ) ;
 struct priority_group* READ_ONCE (int ) ;
 int __switch_pg (struct multipath*,struct priority_group*) ;
 struct pgpath* path_to_pgpath (struct dm_path*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dm_path* stub1 (TYPE_2__*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pgpath *choose_path_in_pg(struct multipath *m,
     struct priority_group *pg,
     size_t nr_bytes)
{
 unsigned long flags;
 struct dm_path *path;
 struct pgpath *pgpath;

 path = pg->ps.type->select_path(&pg->ps, nr_bytes);
 if (!path)
  return ERR_PTR(-ENXIO);

 pgpath = path_to_pgpath(path);

 if (unlikely(READ_ONCE(m->current_pg) != pg)) {

  spin_lock_irqsave(&m->lock, flags);
  m->current_pgpath = pgpath;
  __switch_pg(m, pg);
  spin_unlock_irqrestore(&m->lock, flags);
 }

 return pgpath;
}
