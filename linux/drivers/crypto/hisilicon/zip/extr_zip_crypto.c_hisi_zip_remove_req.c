
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_zip_req_q {int req_lock; int req_bitmap; } ;
struct hisi_zip_req {int req_id; int src; int dst; } ;
struct hisi_zip_qp_ctx {TYPE_1__* qp; struct hisi_zip_req_q req_q; } ;
struct TYPE_2__ {scalar_t__ alg_type; } ;


 scalar_t__ HZIP_ALG_TYPE_COMP ;
 int clear_bit (int ,int ) ;
 int kfree (int ) ;
 int memset (struct hisi_zip_req*,int ,int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void hisi_zip_remove_req(struct hisi_zip_qp_ctx *qp_ctx,
    struct hisi_zip_req *req)
{
 struct hisi_zip_req_q *req_q = &qp_ctx->req_q;

 if (qp_ctx->qp->alg_type == HZIP_ALG_TYPE_COMP)
  kfree(req->dst);
 else
  kfree(req->src);

 write_lock(&req_q->req_lock);
 clear_bit(req->req_id, req_q->req_bitmap);
 memset(req, 0, sizeof(struct hisi_zip_req));
 write_unlock(&req_q->req_lock);
}
