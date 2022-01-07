
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_zip_qp_ctx {struct hisi_qp* qp; } ;
struct hisi_qp {int req_type; struct hisi_zip_qp_ctx* qp_ctx; } ;
struct hisi_qm {int dummy; } ;


 scalar_t__ IS_ERR (struct hisi_qp*) ;
 int PTR_ERR (struct hisi_qp*) ;
 struct hisi_qp* hisi_qm_create_qp (struct hisi_qm*,int) ;
 int hisi_qm_release_qp (struct hisi_qp*) ;
 int hisi_qm_start_qp (struct hisi_qp*,int ) ;

__attribute__((used)) static int hisi_zip_create_qp(struct hisi_qm *qm, struct hisi_zip_qp_ctx *ctx,
         int alg_type, int req_type)
{
 struct hisi_qp *qp;
 int ret;

 qp = hisi_qm_create_qp(qm, alg_type);
 if (IS_ERR(qp))
  return PTR_ERR(qp);

 qp->req_type = req_type;
 qp->qp_ctx = ctx;
 ctx->qp = qp;

 ret = hisi_qm_start_qp(qp, 0);
 if (ret < 0)
  goto err_release_qp;

 return 0;

err_release_qp:
 hisi_qm_release_qp(qp);
 return ret;
}
