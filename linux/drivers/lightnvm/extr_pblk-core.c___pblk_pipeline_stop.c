
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_mgmt {int free_lock; int * data_next; int * data_line; } ;
struct pblk {int state; struct pblk_line_mgmt l_mg; } ;


 int PBLK_STATE_STOPPED ;
 int pblk_disk_name (struct pblk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_pblk_state (int ,int ) ;

void __pblk_pipeline_stop(struct pblk *pblk)
{
 struct pblk_line_mgmt *l_mg = &pblk->l_mg;

 spin_lock(&l_mg->free_lock);
 pblk->state = PBLK_STATE_STOPPED;
 trace_pblk_state(pblk_disk_name(pblk), pblk->state);
 l_mg->data_line = ((void*)0);
 l_mg->data_next = ((void*)0);
 spin_unlock(&l_mg->free_lock);
}
