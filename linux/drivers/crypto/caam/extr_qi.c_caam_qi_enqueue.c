
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qm_fd {int dummy; } ;
struct device {int dummy; } ;
struct caam_drv_req {TYPE_1__* drv_ctx; int * fd_sgt; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int req_fq; } ;


 int CAAM_QI_ENQUEUE_RETRIES ;
 int DMA_BIDIRECTIONAL ;
 int EBUSY ;
 int EIO ;
 int dev_err (struct device*,char*,...) ;
 int dma_map_single (struct device*,int *,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 scalar_t__ likely (int) ;
 int qm_fd_addr_set64 (struct qm_fd*,int ) ;
 int qm_fd_clear_fd (struct qm_fd*) ;
 int qm_fd_set_compound (struct qm_fd*,int ) ;
 int qm_sg_entry_get_len (int *) ;
 int qman_enqueue (int ,struct qm_fd*) ;

int caam_qi_enqueue(struct device *qidev, struct caam_drv_req *req)
{
 struct qm_fd fd;
 dma_addr_t addr;
 int ret;
 int num_retries = 0;

 qm_fd_clear_fd(&fd);
 qm_fd_set_compound(&fd, qm_sg_entry_get_len(&req->fd_sgt[1]));

 addr = dma_map_single(qidev, req->fd_sgt, sizeof(req->fd_sgt),
         DMA_BIDIRECTIONAL);
 if (dma_mapping_error(qidev, addr)) {
  dev_err(qidev, "DMA mapping error for QI enqueue request\n");
  return -EIO;
 }
 qm_fd_addr_set64(&fd, addr);

 do {
  ret = qman_enqueue(req->drv_ctx->req_fq, &fd);
  if (likely(!ret))
   return 0;

  if (ret != -EBUSY)
   break;
  num_retries++;
 } while (num_retries < CAAM_QI_ENQUEUE_RETRIES);

 dev_err(qidev, "qman_enqueue failed: %d\n", ret);

 return ret;
}
