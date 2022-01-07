
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int log_list; } ;
struct r5l_log {int no_space_stripes_lock; int no_space_stripes; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void r5l_add_no_space_stripe(struct r5l_log *log,
        struct stripe_head *sh)
{
 spin_lock(&log->no_space_stripes_lock);
 list_add_tail(&sh->log_list, &log->no_space_stripes);
 spin_unlock(&log->no_space_stripes_lock);
}
