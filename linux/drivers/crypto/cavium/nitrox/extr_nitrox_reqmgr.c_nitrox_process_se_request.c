
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct TYPE_23__ {int ctxl; int arg; int ctxc; } ;
struct TYPE_24__ {TYPE_8__ s; } ;
struct se_crypto_request {int gph; int opcode; TYPE_9__ ctrl; scalar_t__ ctx_handle; int comp; int orh; int gfp; int flags; } ;
struct TYPE_16__ {void* rptr; int ssz; } ;
struct TYPE_17__ {TYPE_1__ s; void** value; } ;
struct TYPE_13__ {int ctxl; void* ctxp; int opcode; int arg; int ctxc; scalar_t__ destport; int uddl; } ;
struct TYPE_14__ {TYPE_10__ s; void** value; } ;
struct TYPE_20__ {int g; scalar_t__ fsz; scalar_t__ tlen; int ssz; int gsz; } ;
struct TYPE_22__ {void* value; TYPE_5__ s; } ;
struct TYPE_15__ {scalar_t__* fdata; TYPE_2__ slc; TYPE_11__ irh; TYPE_7__ ih; void* dptr0; } ;
struct TYPE_19__ {void* sgcomp_dma; int sgmap_cnt; } ;
struct TYPE_21__ {scalar_t__ total_bytes; int sgmap_cnt; void* sgcomp_dma; } ;
struct TYPE_18__ {int completion; int orh; } ;
struct nitrox_softreq {TYPE_12__ instr; TYPE_4__ out; TYPE_6__ in; int * cmdq; TYPE_3__ resp; int status; void* cb_arg; int callback; int gfp; int flags; struct nitrox_device* ndev; } ;
struct nitrox_device {int nr_queues; int * pkt_inq; } ;
struct gphdr {int dummy; } ;
struct ctx_hdr {void* ctx_dma; } ;
typedef void* dma_addr_t ;
typedef int completion_t ;


 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ FDATA_SIZE ;
 int MIN_UDD_LEN ;
 int REQ_NOT_POSTED ;
 scalar_t__ SOLICIT_BASE_DPORT ;
 int atomic_set (int *,int ) ;
 void* cpu_to_be64 (void*) ;
 int kfree (struct nitrox_softreq*) ;
 struct nitrox_softreq* kzalloc (int,int ) ;
 int nitrox_enqueue_request (struct nitrox_softreq*) ;
 int nitrox_ready (struct nitrox_device*) ;
 int smp_processor_id () ;
 int softreq_destroy (struct nitrox_softreq*) ;
 int softreq_map_iobuf (struct nitrox_softreq*,struct se_crypto_request*) ;

int nitrox_process_se_request(struct nitrox_device *ndev,
         struct se_crypto_request *req,
         completion_t callback,
         void *cb_arg)
{
 struct nitrox_softreq *sr;
 dma_addr_t ctx_handle = 0;
 int qno, ret = 0;

 if (!nitrox_ready(ndev))
  return -ENODEV;

 sr = kzalloc(sizeof(*sr), req->gfp);
 if (!sr)
  return -ENOMEM;

 sr->ndev = ndev;
 sr->flags = req->flags;
 sr->gfp = req->gfp;
 sr->callback = callback;
 sr->cb_arg = cb_arg;

 atomic_set(&sr->status, REQ_NOT_POSTED);

 sr->resp.orh = req->orh;
 sr->resp.completion = req->comp;

 ret = softreq_map_iobuf(sr, req);
 if (ret) {
  kfree(sr);
  return ret;
 }


 if (req->ctx_handle) {
  struct ctx_hdr *hdr;
  u8 *ctx_ptr;

  ctx_ptr = (u8 *)(uintptr_t)req->ctx_handle;
  hdr = (struct ctx_hdr *)(ctx_ptr - sizeof(struct ctx_hdr));
  ctx_handle = hdr->ctx_dma;
 }


 qno = smp_processor_id() % ndev->nr_queues;

 sr->cmdq = &ndev->pkt_inq[qno];
 sr->instr.dptr0 = cpu_to_be64(sr->in.sgcomp_dma);


 sr->instr.ih.value = 0;
 sr->instr.ih.s.g = 1;
 sr->instr.ih.s.gsz = sr->in.sgmap_cnt;
 sr->instr.ih.s.ssz = sr->out.sgmap_cnt;
 sr->instr.ih.s.fsz = FDATA_SIZE + sizeof(struct gphdr);
 sr->instr.ih.s.tlen = sr->instr.ih.s.fsz + sr->in.total_bytes;
 sr->instr.ih.value = cpu_to_be64(sr->instr.ih.value);


 sr->instr.irh.value[0] = 0;
 sr->instr.irh.s.uddl = MIN_UDD_LEN;

 sr->instr.irh.s.ctxl = (req->ctrl.s.ctxl / 8);

 sr->instr.irh.s.destport = SOLICIT_BASE_DPORT + qno;
 sr->instr.irh.s.ctxc = req->ctrl.s.ctxc;
 sr->instr.irh.s.arg = req->ctrl.s.arg;
 sr->instr.irh.s.opcode = req->opcode;
 sr->instr.irh.value[0] = cpu_to_be64(sr->instr.irh.value[0]);


 sr->instr.irh.s.ctxp = cpu_to_be64(ctx_handle);


 sr->instr.slc.value[0] = 0;
 sr->instr.slc.s.ssz = sr->out.sgmap_cnt;
 sr->instr.slc.value[0] = cpu_to_be64(sr->instr.slc.value[0]);


 sr->instr.slc.s.rptr = cpu_to_be64(sr->out.sgcomp_dma);






 sr->instr.fdata[0] = *((u64 *)&req->gph);
 sr->instr.fdata[1] = 0;

 ret = nitrox_enqueue_request(sr);
 if (ret == -ENOSPC)
  goto send_fail;

 return ret;

send_fail:
 softreq_destroy(sr);
 return ret;
}
