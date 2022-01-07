
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_qp {int flush_code; scalar_t__ term_flags; } ;
struct i40iw_qp_flush_info {int sq; int rq; int rq_major_code; int rq_minor_code; int sq_major_code; int sq_minor_code; } ;
struct i40iw_qp {struct i40iw_sc_qp sc_qp; } ;
struct i40iw_device {int dummy; } ;


 int i40iw_hw_flush_wqes (struct i40iw_device*,struct i40iw_sc_qp*,struct i40iw_qp_flush_info*,int) ;
 int i40iw_set_flush_info (struct i40iw_qp_flush_info*,int *,int *,int ) ;
 int memset (struct i40iw_qp_flush_info*,int ,int) ;

void i40iw_flush_wqes(struct i40iw_device *iwdev, struct i40iw_qp *iwqp)
{
 struct i40iw_qp_flush_info info;
 struct i40iw_qp_flush_info *pinfo = &info;

 struct i40iw_sc_qp *qp = &iwqp->sc_qp;

 memset(pinfo, 0, sizeof(*pinfo));
 info.sq = 1;
 info.rq = 1;
 if (qp->term_flags) {
  i40iw_set_flush_info(pinfo, &pinfo->sq_minor_code,
         &pinfo->sq_major_code, qp->flush_code);
  i40iw_set_flush_info(pinfo, &pinfo->rq_minor_code,
         &pinfo->rq_major_code, qp->flush_code);
 }
 (void)i40iw_hw_flush_wqes(iwdev, &iwqp->sc_qp, &info, 1);
}
