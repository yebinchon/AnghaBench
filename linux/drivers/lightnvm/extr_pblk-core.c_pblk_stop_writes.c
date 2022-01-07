
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_line {int dummy; } ;
struct TYPE_2__ {int free_lock; } ;
struct pblk {int state; TYPE_1__ l_mg; } ;


 int PBLK_STATE_STOPPING ;
 int lockdep_assert_held (int *) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_set_space_limit (struct pblk*) ;
 int trace_pblk_state (int ,int ) ;

__attribute__((used)) static void pblk_stop_writes(struct pblk *pblk, struct pblk_line *line)
{
 lockdep_assert_held(&pblk->l_mg.free_lock);

 pblk_set_space_limit(pblk);
 pblk->state = PBLK_STATE_STOPPING;
 trace_pblk_state(pblk_disk_name(pblk), pblk->state);
}
