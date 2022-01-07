
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int lock; int valid_paths; } ;
struct path_selector {struct selector* context; } ;
struct path_info {int list; } ;
struct dm_path {struct path_info* pscontext; } ;


 int list_move_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ql_reinstate_path(struct path_selector *ps, struct dm_path *path)
{
 struct selector *s = ps->context;
 struct path_info *pi = path->pscontext;
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);
 list_move_tail(&pi->list, &s->valid_paths);
 spin_unlock_irqrestore(&s->lock, flags);

 return 0;
}
