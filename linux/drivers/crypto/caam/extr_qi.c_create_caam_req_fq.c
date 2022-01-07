
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * fqs; int ern; } ;
struct qman_fq {int fqid; TYPE_1__ cb; } ;
struct TYPE_8__ {int cgid; int context_b; void* fq_ctrl; } ;
struct qm_mcc_initfq {TYPE_3__ fqd; void* we_mask; } ;
struct device {int dummy; } ;
typedef int opts ;
typedef int dma_addr_t ;
struct TYPE_7__ {int cgrid; } ;
struct TYPE_9__ {TYPE_2__ cgr; } ;


 int ENOMEM ;
 struct qman_fq* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int QMAN_FQ_FLAG_DYNAMIC_FQID ;
 int QMAN_FQ_FLAG_TO_DCPORTAL ;
 int QM_FQCTRL_CGE ;
 int QM_FQCTRL_CPCSTASH ;
 int QM_INITFQ_WE_CGID ;
 int QM_INITFQ_WE_CONTEXTA ;
 int QM_INITFQ_WE_CONTEXTB ;
 int QM_INITFQ_WE_DESTWQ ;
 int QM_INITFQ_WE_FQCTRL ;
 int caam_fq_ern_cb ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int kfree (struct qman_fq*) ;
 struct qman_fq* kzalloc (int,int ) ;
 int memset (struct qm_mcc_initfq*,int ,int) ;
 TYPE_5__ qipriv ;
 int qm_channel_caam ;
 int qm_fqd_context_a_set64 (TYPE_3__*,int ) ;
 int qm_fqd_set_destwq (TYPE_3__*,int ,int) ;
 int qman_create_fq (int ,int,struct qman_fq*) ;
 int qman_destroy_fq (struct qman_fq*) ;
 int qman_fq_fqid (struct qman_fq*) ;
 int qman_init_fq (struct qman_fq*,int,struct qm_mcc_initfq*) ;
 int smp_processor_id () ;

__attribute__((used)) static struct qman_fq *create_caam_req_fq(struct device *qidev,
       struct qman_fq *rsp_fq,
       dma_addr_t hwdesc,
       int fq_sched_flag)
{
 int ret;
 struct qman_fq *req_fq;
 struct qm_mcc_initfq opts;

 req_fq = kzalloc(sizeof(*req_fq), GFP_ATOMIC);
 if (!req_fq)
  return ERR_PTR(-ENOMEM);

 req_fq->cb.ern = caam_fq_ern_cb;
 req_fq->cb.fqs = ((void*)0);

 ret = qman_create_fq(0, QMAN_FQ_FLAG_DYNAMIC_FQID |
    QMAN_FQ_FLAG_TO_DCPORTAL, req_fq);
 if (ret) {
  dev_err(qidev, "Failed to create session req FQ\n");
  goto create_req_fq_fail;
 }

 memset(&opts, 0, sizeof(opts));
 opts.we_mask = cpu_to_be16(QM_INITFQ_WE_FQCTRL | QM_INITFQ_WE_DESTWQ |
       QM_INITFQ_WE_CONTEXTB |
       QM_INITFQ_WE_CONTEXTA | QM_INITFQ_WE_CGID);
 opts.fqd.fq_ctrl = cpu_to_be16(QM_FQCTRL_CPCSTASH | QM_FQCTRL_CGE);
 qm_fqd_set_destwq(&opts.fqd, qm_channel_caam, 2);
 opts.fqd.context_b = cpu_to_be32(qman_fq_fqid(rsp_fq));
 qm_fqd_context_a_set64(&opts.fqd, hwdesc);
 opts.fqd.cgid = qipriv.cgr.cgrid;

 ret = qman_init_fq(req_fq, fq_sched_flag, &opts);
 if (ret) {
  dev_err(qidev, "Failed to init session req FQ\n");
  goto init_req_fq_fail;
 }

 dev_dbg(qidev, "Allocated request FQ %u for CPU %u\n", req_fq->fqid,
  smp_processor_id());
 return req_fq;

init_req_fq_fail:
 qman_destroy_fq(req_fq);
create_req_fq_fail:
 kfree(req_fq);
 return ERR_PTR(ret);
}
