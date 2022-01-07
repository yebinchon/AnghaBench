
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cm_work {int type; int work; struct siw_cep* cep; } ;
struct siw_cep {scalar_t__ state; scalar_t__ qp; struct siw_cm_work* mpa_timer; } ;
typedef enum siw_work_type { ____Placeholder_siw_work_type } siw_work_type ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 unsigned long MPAREP_TIMEOUT ;
 unsigned long MPAREQ_TIMEOUT ;
 int SIW_CM_WORK_MPATIMEOUT ;
 scalar_t__ SIW_EPSTATE_AWAIT_MPAREP ;
 int qp_id (scalar_t__) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int siw_cep_get (struct siw_cep*) ;
 int siw_cm_work_handler ;
 int siw_cm_wq ;
 int siw_dbg_cep (struct siw_cep*,char*,...) ;
 struct siw_cm_work* siw_get_work (struct siw_cep*) ;

int siw_cm_queue_work(struct siw_cep *cep, enum siw_work_type type)
{
 struct siw_cm_work *work = siw_get_work(cep);
 unsigned long delay = 0;

 if (!work) {
  siw_dbg_cep(cep, "failed with no work available\n");
  return -ENOMEM;
 }
 work->type = type;
 work->cep = cep;

 siw_cep_get(cep);

 INIT_DELAYED_WORK(&work->work, siw_cm_work_handler);

 if (type == SIW_CM_WORK_MPATIMEOUT) {
  cep->mpa_timer = work;

  if (cep->state == SIW_EPSTATE_AWAIT_MPAREP)
   delay = MPAREQ_TIMEOUT;
  else
   delay = MPAREP_TIMEOUT;
 }
 siw_dbg_cep(cep, "[QP %u]: work type: %d, timeout %lu\n",
      cep->qp ? qp_id(cep->qp) : -1, type, delay);

 queue_delayed_work(siw_cm_wq, &work->work, delay);

 return 0;
}
