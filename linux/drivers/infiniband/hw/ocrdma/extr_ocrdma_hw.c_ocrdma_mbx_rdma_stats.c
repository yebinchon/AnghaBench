
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_8__ {TYPE_2__* sge; } ;
struct TYPE_9__ {TYPE_3__ nonemb_req; } ;
struct TYPE_6__ {int pyld_len; int spcl_sge_cnt_emb; } ;
struct ocrdma_rdma_stats_resp {int reset_stats; TYPE_4__ u; TYPE_1__ hdr; } ;
struct ocrdma_rdma_stats_req {int reset_stats; TYPE_4__ u; TYPE_1__ hdr; } ;
struct ocrdma_mqe {int reset_stats; TYPE_4__ u; TYPE_1__ hdr; } ;
struct ocrdma_mbx_hdr {int dummy; } ;
struct TYPE_10__ {int size; int pa; struct ocrdma_rdma_stats_resp* va; struct ocrdma_rdma_stats_resp mqe; } ;
struct ocrdma_dev {TYPE_5__ stats_mem; } ;
struct TYPE_7__ {int len; void* pa_hi; void* pa_lo; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OCRDMA_CMD_GET_RDMA_STATS ;
 int OCRDMA_MQE_HDR_SGE_CNT_MASK ;
 int OCRDMA_MQE_HDR_SGE_CNT_SHIFT ;
 int OCRDMA_SUBSYS_ROCE ;
 int kfree (struct ocrdma_rdma_stats_resp*) ;
 struct ocrdma_rdma_stats_resp* kmalloc (int,int ) ;
 int memcpy (struct ocrdma_rdma_stats_resp*,struct ocrdma_rdma_stats_resp*,int) ;
 int memset (struct ocrdma_rdma_stats_resp*,int ,int) ;
 int ocrdma_init_mch (struct ocrdma_mbx_hdr*,int ,int ,int) ;
 int ocrdma_le32_to_cpu (struct ocrdma_rdma_stats_resp*,int) ;
 int ocrdma_nonemb_mbx_cmd (struct ocrdma_dev*,struct ocrdma_rdma_stats_resp*,struct ocrdma_rdma_stats_resp*) ;
 scalar_t__ upper_32_bits (int) ;

int ocrdma_mbx_rdma_stats(struct ocrdma_dev *dev, bool reset)
{
 struct ocrdma_rdma_stats_req *req = dev->stats_mem.va;
 struct ocrdma_mqe *mqe = &dev->stats_mem.mqe;
 struct ocrdma_rdma_stats_resp *old_stats;
 int status;

 old_stats = kmalloc(sizeof(*old_stats), GFP_KERNEL);
 if (old_stats == ((void*)0))
  return -ENOMEM;

 memset(mqe, 0, sizeof(*mqe));
 mqe->hdr.pyld_len = dev->stats_mem.size;
 mqe->hdr.spcl_sge_cnt_emb |=
   (1 << OCRDMA_MQE_HDR_SGE_CNT_SHIFT) &
    OCRDMA_MQE_HDR_SGE_CNT_MASK;
 mqe->u.nonemb_req.sge[0].pa_lo = (u32) (dev->stats_mem.pa & 0xffffffff);
 mqe->u.nonemb_req.sge[0].pa_hi = (u32) upper_32_bits(dev->stats_mem.pa);
 mqe->u.nonemb_req.sge[0].len = dev->stats_mem.size;


 memcpy(old_stats, req, sizeof(struct ocrdma_rdma_stats_resp));
 memset(req, 0, dev->stats_mem.size);

 ocrdma_init_mch((struct ocrdma_mbx_hdr *)req,
   OCRDMA_CMD_GET_RDMA_STATS,
   OCRDMA_SUBSYS_ROCE,
   dev->stats_mem.size);
 if (reset)
  req->reset_stats = reset;

 status = ocrdma_nonemb_mbx_cmd(dev, mqe, dev->stats_mem.va);
 if (status)

  memcpy(req, old_stats, sizeof(struct ocrdma_rdma_stats_resp));
 else
  ocrdma_le32_to_cpu(req, dev->stats_mem.size);

 kfree(old_stats);
 return status;
}
