
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qib_pportdata {scalar_t__ sdma_descq_head; scalar_t__ sdma_descq_tail; scalar_t__ sdma_descq_cnt; int * sdma_head_dma; struct qib_devdata* dd; } ;
struct qib_devdata {int flags; } ;


 int QIB_HAS_SDMA_TIMEOUT ;
 scalar_t__ __qib_sdma_running (struct qib_pportdata*) ;
 int krp_senddmahead ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ qib_read_kreg_port (struct qib_pportdata*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 qib_sdma_7322_gethead(struct qib_pportdata *ppd)
{
 struct qib_devdata *dd = ppd->dd;
 int sane;
 int use_dmahead;
 u16 swhead;
 u16 swtail;
 u16 cnt;
 u16 hwhead;

 use_dmahead = __qib_sdma_running(ppd) &&
  (dd->flags & QIB_HAS_SDMA_TIMEOUT);
retry:
 hwhead = use_dmahead ?
  (u16) le64_to_cpu(*ppd->sdma_head_dma) :
  (u16) qib_read_kreg_port(ppd, krp_senddmahead);

 swhead = ppd->sdma_descq_head;
 swtail = ppd->sdma_descq_tail;
 cnt = ppd->sdma_descq_cnt;

 if (swhead < swtail)

  sane = (hwhead >= swhead) & (hwhead <= swtail);
 else if (swhead > swtail)

  sane = ((hwhead >= swhead) && (hwhead < cnt)) ||
   (hwhead <= swtail);
 else

  sane = (hwhead == swhead);

 if (unlikely(!sane)) {
  if (use_dmahead) {

   use_dmahead = 0;
   goto retry;
  }

  hwhead = swhead;
 }

 return hwhead;
}
