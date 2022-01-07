
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh901318_desc {int lli; int head_ctrl; int head_config; } ;
struct coh901318_chan {int busy; } ;


 int coh901318_desc_remove (struct coh901318_desc*) ;
 int coh901318_desc_submit (struct coh901318_chan*,struct coh901318_desc*) ;
 struct coh901318_desc* coh901318_first_queued (struct coh901318_chan*) ;
 int coh901318_prep_linked_list (struct coh901318_chan*,int ) ;
 int coh901318_set_conf (struct coh901318_chan*,int ) ;
 int coh901318_set_ctrl (struct coh901318_chan*,int ) ;
 int coh901318_start (struct coh901318_chan*) ;

__attribute__((used)) static struct coh901318_desc *coh901318_queue_start(struct coh901318_chan *cohc)
{
 struct coh901318_desc *cohd;





 cohd = coh901318_first_queued(cohc);

 if (cohd != ((void*)0)) {

  coh901318_desc_remove(cohd);

  cohc->busy = 1;

  coh901318_desc_submit(cohc, cohd);


  coh901318_set_conf(cohc, cohd->head_config);
  coh901318_set_ctrl(cohc, cohd->head_ctrl);
  coh901318_prep_linked_list(cohc, cohd->lli);


  coh901318_start(cohc);

 }

 return cohd;
}
