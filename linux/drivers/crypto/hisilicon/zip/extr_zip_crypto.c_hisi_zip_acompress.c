
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_zip_req {int dummy; } ;
struct hisi_zip_qp_ctx {TYPE_1__* qp; } ;
struct hisi_zip_ctx {struct hisi_zip_qp_ctx* qp_ctx; } ;
struct TYPE_4__ {int tfm; } ;
struct acomp_req {int dst; TYPE_2__ base; } ;
struct TYPE_3__ {int req_type; } ;


 int EINPROGRESS ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct hisi_zip_req*) ;
 int PTR_ERR (struct hisi_zip_req*) ;
 size_t QPC_COMP ;
 int add_comp_head (int ,int ) ;
 struct hisi_zip_ctx* crypto_tfm_ctx (int ) ;
 struct hisi_zip_req* hisi_zip_create_req (struct acomp_req*,struct hisi_zip_qp_ctx*,size_t,int) ;
 int hisi_zip_do_work (struct hisi_zip_req*,struct hisi_zip_qp_ctx*) ;
 int hisi_zip_remove_req (struct hisi_zip_qp_ctx*,struct hisi_zip_req*) ;

__attribute__((used)) static int hisi_zip_acompress(struct acomp_req *acomp_req)
{
 struct hisi_zip_ctx *ctx = crypto_tfm_ctx(acomp_req->base.tfm);
 struct hisi_zip_qp_ctx *qp_ctx = &ctx->qp_ctx[QPC_COMP];
 struct hisi_zip_req *req;
 int head_size;
 int ret;


 head_size = add_comp_head(acomp_req->dst, qp_ctx->qp->req_type);
 if (head_size < 0)
  return -ENOMEM;

 req = hisi_zip_create_req(acomp_req, qp_ctx, (size_t)head_size, 1);
 if (IS_ERR(req))
  return PTR_ERR(req);

 ret = hisi_zip_do_work(req, qp_ctx);
 if (ret != -EINPROGRESS)
  hisi_zip_remove_req(qp_ctx, req);

 return ret;
}
