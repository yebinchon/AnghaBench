
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ioatdma_chan {int dummy; } ;
struct TYPE_5__ {int flags; scalar_t__ phys; } ;
struct ioat_ring_ent {TYPE_2__ txd; TYPE_1__* sed; struct ioat_pq_descriptor* pq; } ;
typedef void ioat_raw_descriptor ;
struct TYPE_6__ {int src_cnt; scalar_t__ q_disable; scalar_t__ p_disable; int compl_write; int int_en; int op; } ;
struct ioat_pq_descriptor {int q_addr; int p_addr; int * coef; TYPE_3__ ctl_f; int ctl; int size; scalar_t__ next; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ hw; } ;


 int desc_id (struct ioat_ring_ent*) ;
 int dev_dbg (struct device*,char*,int,...) ;
 scalar_t__ pq16_get_src (void**,int) ;
 int src16_cnt_to_sw (int ) ;
 struct device* to_dev (struct ioatdma_chan*) ;

__attribute__((used)) static void dump_pq16_desc_dbg(struct ioatdma_chan *ioat_chan,
          struct ioat_ring_ent *desc)
{
 struct device *dev = to_dev(ioat_chan);
 struct ioat_pq_descriptor *pq = desc->pq;
 struct ioat_raw_descriptor *descs[] = { (void *)pq,
      (void *)pq,
      (void *)pq };
 int src_cnt = src16_cnt_to_sw(pq->ctl_f.src_cnt);
 int i;

 if (desc->sed) {
  descs[1] = (void *)desc->sed->hw;
  descs[2] = (void *)desc->sed->hw + 64;
 }

 dev_dbg(dev, "desc[%d]: (%#llx->%#llx) flags: %#x"
  " sz: %#x ctl: %#x (op: %#x int: %d compl: %d pq: '%s%s'"
  " src_cnt: %d)\n",
  desc_id(desc), (unsigned long long) desc->txd.phys,
  (unsigned long long) pq->next,
  desc->txd.flags, pq->size, pq->ctl,
  pq->ctl_f.op, pq->ctl_f.int_en,
  pq->ctl_f.compl_write,
  pq->ctl_f.p_disable ? "" : "p", pq->ctl_f.q_disable ? "" : "q",
  pq->ctl_f.src_cnt);
 for (i = 0; i < src_cnt; i++) {
  dev_dbg(dev, "\tsrc[%d]: %#llx coef: %#x\n", i,
   (unsigned long long) pq16_get_src(descs, i),
   pq->coef[i]);
 }
 dev_dbg(dev, "\tP: %#llx\n", pq->p_addr);
 dev_dbg(dev, "\tQ: %#llx\n", pq->q_addr);
}
