
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_fq {int dummy; } ;
struct qm_mcr_queryfq_np {int dummy; } ;


 int frm_cnt ;
 int msleep (int) ;
 int qm_mcr_np_get (struct qm_mcr_queryfq_np*,int ) ;
 int qman_query_fq_np (struct qman_fq*,struct qm_mcr_queryfq_np*) ;

__attribute__((used)) static int empty_caam_fq(struct qman_fq *fq)
{
 int ret;
 struct qm_mcr_queryfq_np np;


 do {
  ret = qman_query_fq_np(fq, &np);
  if (ret)
   return ret;

  if (!qm_mcr_np_get(&np, frm_cnt))
   break;

  msleep(20);
 } while (1);





 msleep(20);
 return 0;
}
