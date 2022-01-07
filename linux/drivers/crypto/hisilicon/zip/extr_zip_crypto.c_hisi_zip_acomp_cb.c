
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hisi_zip_sqe {int tag; int dw3; int produced; } ;
struct hisi_zip_req_q {struct hisi_zip_req* q; } ;
struct hisi_zip_req {int hw_dst; int dst; int hw_src; int src; struct acomp_req* req; } ;
struct hisi_zip_qp_ctx {struct hisi_zip_req_q req_q; } ;
struct hisi_qp {scalar_t__ alg_type; int req_type; int qp_id; TYPE_2__* qm; struct hisi_zip_qp_ctx* qp_ctx; } ;
struct device {int dummy; } ;
struct TYPE_6__ {scalar_t__ complete; } ;
struct acomp_req {int dlen; TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;


 int EIO ;
 int HZIP_BD_STATUS_M ;
 int HZIP_NC_ERR ;
 int TO_HEAD_SIZE (int ) ;
 int acomp_request_complete (struct acomp_req*,int) ;
 int dev_err (struct device*,char*,char*,int ,int,int) ;
 int hisi_acc_sg_buf_unmap (struct device*,int ,int ) ;
 int hisi_zip_remove_req (struct hisi_zip_qp_ctx*,struct hisi_zip_req*) ;

__attribute__((used)) static void hisi_zip_acomp_cb(struct hisi_qp *qp, void *data)
{
 struct hisi_zip_sqe *sqe = data;
 struct hisi_zip_qp_ctx *qp_ctx = qp->qp_ctx;
 struct hisi_zip_req_q *req_q = &qp_ctx->req_q;
 struct hisi_zip_req *req = req_q->q + sqe->tag;
 struct acomp_req *acomp_req = req->req;
 struct device *dev = &qp->qm->pdev->dev;
 u32 status, dlen, head_size;
 int err = 0;

 status = sqe->dw3 & HZIP_BD_STATUS_M;

 if (status != 0 && status != HZIP_NC_ERR) {
  dev_err(dev, "%scompress fail in qp%u: %u, output: %u\n",
   (qp->alg_type == 0) ? "" : "de", qp->qp_id, status,
   sqe->produced);
  err = -EIO;
 }
 dlen = sqe->produced;

 hisi_acc_sg_buf_unmap(dev, req->src, req->hw_src);
 hisi_acc_sg_buf_unmap(dev, req->dst, req->hw_dst);

 head_size = (qp->alg_type == 0) ? TO_HEAD_SIZE(qp->req_type) : 0;
 acomp_req->dlen = dlen + head_size;

 if (acomp_req->base.complete)
  acomp_request_complete(acomp_req, err);

 hisi_zip_remove_req(qp_ctx, req);
}
