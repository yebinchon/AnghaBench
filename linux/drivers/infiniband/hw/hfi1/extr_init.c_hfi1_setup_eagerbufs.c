
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_6__ {size_t group_size; } ;
struct hfi1_devdata {TYPE_2__* pcidev; TYPE_1__ rcv_entries; } ;
struct TYPE_10__ {size_t size; size_t rcvtid_size; size_t alloced; size_t count; size_t numbufs; TYPE_3__* buffers; TYPE_4__* rcvtids; int threshold; } ;
struct hfi1_ctxtdata {size_t rcv_array_groups; size_t expected_count; size_t expected_base; size_t eager_base; TYPE_5__ egrbufs; int ctxt; int flags; struct hfi1_devdata* dd; } ;
typedef int gfp_t ;
struct TYPE_9__ {scalar_t__ addr; scalar_t__ dma; } ;
struct TYPE_8__ {scalar_t__ dma; size_t len; scalar_t__ addr; } ;
struct TYPE_7__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int HFI1_CAP_KGET_MASK (int ,int ) ;
 int MAX_TID_PAIR_ENTRIES ;
 int MULTI_PKT_EGR ;
 int PROC ;
 int PT_EAGER ;
 int __GFP_COMP ;
 int __GFP_IO ;
 int __GFP_RECLAIM ;
 int cond_resched () ;
 int dd_dev_err (struct hfi1_devdata*,char*,int ) ;
 int * dma_alloc_coherent (int *,size_t,scalar_t__*,int) ;
 int dma_free_coherent (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int hfi1_cdbg (int ,char*,int ,int,...) ;
 int hfi1_max_mtu ;
 int hfi1_put_tid (struct hfi1_devdata*,size_t,int ,scalar_t__,size_t) ;
 int hfi1_rcvbuf_validate (int,int ,size_t*) ;
 size_t max (unsigned long,int ) ;
 int rounddown_pow_of_two (int) ;
 size_t roundup (int,size_t) ;
 size_t roundup_pow_of_two (int ) ;

int hfi1_setup_eagerbufs(struct hfi1_ctxtdata *rcd)
{
 struct hfi1_devdata *dd = rcd->dd;
 u32 max_entries, egrtop, alloced_bytes = 0;
 gfp_t gfp_flags;
 u16 order, idx = 0;
 int ret = 0;
 u16 round_mtu = roundup_pow_of_two(hfi1_max_mtu);







 gfp_flags = __GFP_RECLAIM | __GFP_IO | __GFP_COMP;
 if (rcd->egrbufs.size < (round_mtu * dd->rcv_entries.group_size))
  rcd->egrbufs.size = round_mtu * dd->rcv_entries.group_size;




 if (!HFI1_CAP_KGET_MASK(rcd->flags, MULTI_PKT_EGR))
  rcd->egrbufs.rcvtid_size = round_mtu;





 if (rcd->egrbufs.size <= (1 << 20))
  rcd->egrbufs.rcvtid_size = max((unsigned long)round_mtu,
   rounddown_pow_of_two(rcd->egrbufs.size / 8));

 while (alloced_bytes < rcd->egrbufs.size &&
        rcd->egrbufs.alloced < rcd->egrbufs.count) {
  rcd->egrbufs.buffers[idx].addr =
   dma_alloc_coherent(&dd->pcidev->dev,
        rcd->egrbufs.rcvtid_size,
        &rcd->egrbufs.buffers[idx].dma,
        gfp_flags);
  if (rcd->egrbufs.buffers[idx].addr) {
   rcd->egrbufs.buffers[idx].len =
    rcd->egrbufs.rcvtid_size;
   rcd->egrbufs.rcvtids[rcd->egrbufs.alloced].addr =
    rcd->egrbufs.buffers[idx].addr;
   rcd->egrbufs.rcvtids[rcd->egrbufs.alloced].dma =
    rcd->egrbufs.buffers[idx].dma;
   rcd->egrbufs.alloced++;
   alloced_bytes += rcd->egrbufs.rcvtid_size;
   idx++;
  } else {
   u32 new_size, i, j;
   u64 offset = 0;







   if (rcd->egrbufs.rcvtid_size == round_mtu ||
       !HFI1_CAP_KGET_MASK(rcd->flags, MULTI_PKT_EGR)) {
    dd_dev_err(dd, "ctxt%u: Failed to allocate eager buffers\n",
        rcd->ctxt);
    ret = -ENOMEM;
    goto bail_rcvegrbuf_phys;
   }

   new_size = rcd->egrbufs.rcvtid_size / 2;






   if (idx == 0) {
    rcd->egrbufs.rcvtid_size = new_size;
    continue;
   }





   rcd->egrbufs.alloced = 0;
   for (i = 0, j = 0, offset = 0; j < idx; i++) {
    if (i >= rcd->egrbufs.count)
     break;
    rcd->egrbufs.rcvtids[i].dma =
     rcd->egrbufs.buffers[j].dma + offset;
    rcd->egrbufs.rcvtids[i].addr =
     rcd->egrbufs.buffers[j].addr + offset;
    rcd->egrbufs.alloced++;
    if ((rcd->egrbufs.buffers[j].dma + offset +
         new_size) ==
        (rcd->egrbufs.buffers[j].dma +
         rcd->egrbufs.buffers[j].len)) {
     j++;
     offset = 0;
    } else {
     offset += new_size;
    }
   }
   rcd->egrbufs.rcvtid_size = new_size;
  }
 }
 rcd->egrbufs.numbufs = idx;
 rcd->egrbufs.size = alloced_bytes;

 hfi1_cdbg(PROC,
    "ctxt%u: Alloced %u rcv tid entries @ %uKB, total %uKB\n",
    rcd->ctxt, rcd->egrbufs.alloced,
    rcd->egrbufs.rcvtid_size / 1024, rcd->egrbufs.size / 1024);






 rcd->egrbufs.threshold =
  rounddown_pow_of_two(rcd->egrbufs.alloced / 2);





 max_entries = rcd->rcv_array_groups * dd->rcv_entries.group_size;
 egrtop = roundup(rcd->egrbufs.alloced, dd->rcv_entries.group_size);
 rcd->expected_count = max_entries - egrtop;
 if (rcd->expected_count > MAX_TID_PAIR_ENTRIES * 2)
  rcd->expected_count = MAX_TID_PAIR_ENTRIES * 2;

 rcd->expected_base = rcd->eager_base + egrtop;
 hfi1_cdbg(PROC, "ctxt%u: eager:%u, exp:%u, egrbase:%u, expbase:%u\n",
    rcd->ctxt, rcd->egrbufs.alloced, rcd->expected_count,
    rcd->eager_base, rcd->expected_base);

 if (!hfi1_rcvbuf_validate(rcd->egrbufs.rcvtid_size, PT_EAGER, &order)) {
  hfi1_cdbg(PROC,
     "ctxt%u: current Eager buffer size is invalid %u\n",
     rcd->ctxt, rcd->egrbufs.rcvtid_size);
  ret = -EINVAL;
  goto bail_rcvegrbuf_phys;
 }

 for (idx = 0; idx < rcd->egrbufs.alloced; idx++) {
  hfi1_put_tid(dd, rcd->eager_base + idx, PT_EAGER,
        rcd->egrbufs.rcvtids[idx].dma, order);
  cond_resched();
 }

 return 0;

bail_rcvegrbuf_phys:
 for (idx = 0; idx < rcd->egrbufs.alloced &&
      rcd->egrbufs.buffers[idx].addr;
      idx++) {
  dma_free_coherent(&dd->pcidev->dev,
      rcd->egrbufs.buffers[idx].len,
      rcd->egrbufs.buffers[idx].addr,
      rcd->egrbufs.buffers[idx].dma);
  rcd->egrbufs.buffers[idx].addr = ((void*)0);
  rcd->egrbufs.buffers[idx].dma = 0;
  rcd->egrbufs.buffers[idx].len = 0;
 }

 return ret;
}
