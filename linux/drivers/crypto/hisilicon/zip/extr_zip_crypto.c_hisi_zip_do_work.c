
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_zip_sqe {int dummy; } ;
struct hisi_zip_req {int req_id; void* hw_src; int src; void* hw_dst; int dst; int dlen; int slen; void* dma_dst; void* dma_src; } ;
struct hisi_acc_sgl_pool {int dummy; } ;
struct hisi_zip_qp_ctx {struct hisi_acc_sgl_pool sgl_pool; struct hisi_qp* qp; struct hisi_zip_sqe zip_sqe; } ;
struct hisi_qp {int req_type; TYPE_2__* qm; } ;
struct device {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int HZIP_SGL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* hisi_acc_sg_buf_map_to_hw_sgl (struct device*,int ,struct hisi_acc_sgl_pool*,int,void**) ;
 int hisi_acc_sg_buf_unmap (struct device*,int ,void*) ;
 int hisi_qp_send (struct hisi_qp*,struct hisi_zip_sqe*) ;
 int hisi_zip_config_buf_type (struct hisi_zip_sqe*,int ) ;
 int hisi_zip_config_tag (struct hisi_zip_sqe*,int) ;
 int hisi_zip_fill_sqe (struct hisi_zip_sqe*,int ,void*,void*,int ,int ) ;

__attribute__((used)) static int hisi_zip_do_work(struct hisi_zip_req *req,
       struct hisi_zip_qp_ctx *qp_ctx)
{
 struct hisi_zip_sqe *zip_sqe = &qp_ctx->zip_sqe;
 struct hisi_qp *qp = qp_ctx->qp;
 struct device *dev = &qp->qm->pdev->dev;
 struct hisi_acc_sgl_pool *pool = &qp_ctx->sgl_pool;
 dma_addr_t input;
 dma_addr_t output;
 int ret;

 if (!req->src || !req->slen || !req->dst || !req->dlen)
  return -EINVAL;

 req->hw_src = hisi_acc_sg_buf_map_to_hw_sgl(dev, req->src, pool,
          req->req_id << 1, &input);
 if (IS_ERR(req->hw_src))
  return PTR_ERR(req->hw_src);
 req->dma_src = input;

 req->hw_dst = hisi_acc_sg_buf_map_to_hw_sgl(dev, req->dst, pool,
          (req->req_id << 1) + 1,
          &output);
 if (IS_ERR(req->hw_dst)) {
  ret = PTR_ERR(req->hw_dst);
  goto err_unmap_input;
 }
 req->dma_dst = output;

 hisi_zip_fill_sqe(zip_sqe, qp->req_type, input, output, req->slen,
     req->dlen);
 hisi_zip_config_buf_type(zip_sqe, HZIP_SGL);
 hisi_zip_config_tag(zip_sqe, req->req_id);


 ret = hisi_qp_send(qp, zip_sqe);
 if (ret < 0)
  goto err_unmap_output;

 return -EINPROGRESS;

err_unmap_output:
 hisi_acc_sg_buf_unmap(dev, req->dst, req->hw_dst);
err_unmap_input:
 hisi_acc_sg_buf_unmap(dev, req->src, req->hw_src);
 return ret;
}
