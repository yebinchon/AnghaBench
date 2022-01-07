
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union qib_seqnum {int val; int pkt; int seq; } ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct qib_user_sdma_queue {int dummy; } ;
struct qib_user_sdma_pkt {size_t tidsmidx; int payload_size; scalar_t__ frag_size; scalar_t__ bytes_togo; size_t naddr; size_t addrlimit; size_t index; size_t tidsmcount; scalar_t__ tiddma; TYPE_2__* tidsm; TYPE_1__* addr; } ;
struct TYPE_7__ {void* pkt_flags; void* chksum; int ver_ctxt_tid_offset; } ;
struct qib_message_header {int flags; int* uwords; void** bth; TYPE_3__ iph; void** lrh; } ;
struct qib_devdata {TYPE_4__* pcidev; } ;
struct page {int dummy; } ;
typedef void* dma_addr_t ;
typedef void* __le16 ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {scalar_t__ length; int offset; int tid; } ;
struct TYPE_5__ {int dma_mapped; scalar_t__ length; void* addr; int dma_length; scalar_t__ kvaddr; } ;


 int DMA_TO_DEVICE ;
 int EFAULT ;
 int ENOMEM ;
 int QIB_LRH_BTH ;
 int QLOGIC_IB_I_TID_SHIFT ;
 int __free_page (struct page*) ;
 int be16_to_cpu (void*) ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 void* dma_map_page (int *,struct page*,scalar_t__,scalar_t__,int ) ;
 void* dma_map_single (int *,scalar_t__,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,void*) ;
 int kunmap (struct page*) ;
 int le16_to_cpu (void*) ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,void**,scalar_t__) ;
 int put_user_page (struct page*) ;
 void* qib_user_sdma_alloc_header (struct qib_user_sdma_queue*,scalar_t__,void**) ;
 int qib_user_sdma_init_frag (struct qib_user_sdma_pkt*,size_t,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,struct page*,void*,void*,scalar_t__) ;

__attribute__((used)) static int qib_user_sdma_page_to_frags(const struct qib_devdata *dd,
           struct qib_user_sdma_queue *pq,
           struct qib_user_sdma_pkt *pkt,
           struct page *page, u16 put,
           u16 offset, u16 len, void *kvaddr)
{
 __le16 *pbc16;
 void *pbcvaddr;
 struct qib_message_header *hdr;
 u16 newlen, pbclen, lastdesc, dma_mapped;
 u32 vcto;
 union qib_seqnum seqnum;
 dma_addr_t pbcdaddr;
 dma_addr_t dma_addr =
  dma_map_page(&dd->pcidev->dev,
   page, offset, len, DMA_TO_DEVICE);
 int ret = 0;

 if (dma_mapping_error(&dd->pcidev->dev, dma_addr)) {





  if (put) {
   put_user_page(page);
  } else {

   kunmap(page);
   __free_page(page);
  }
  ret = -ENOMEM;
  goto done;
 }
 offset = 0;
 dma_mapped = 1;


next_fragment:





 if (pkt->tiddma && len > pkt->tidsm[pkt->tidsmidx].length)
  newlen = pkt->tidsm[pkt->tidsmidx].length;
 else
  newlen = len;
 lastdesc = 0;
 if ((pkt->payload_size + newlen) >= pkt->frag_size) {
  newlen = pkt->frag_size - pkt->payload_size;
  lastdesc = 1;
 } else if (pkt->tiddma) {
  if (newlen == pkt->tidsm[pkt->tidsmidx].length)
   lastdesc = 1;
 } else {
  if (newlen == pkt->bytes_togo)
   lastdesc = 1;
 }


 qib_user_sdma_init_frag(pkt, pkt->naddr,
  offset, newlen,
  0, lastdesc,
  put, dma_mapped,
  page, kvaddr,
  dma_addr, len);
 pkt->bytes_togo -= newlen;
 pkt->payload_size += newlen;
 pkt->naddr++;
 if (pkt->naddr == pkt->addrlimit) {
  ret = -EFAULT;
  goto done;
 }


 if (pkt->bytes_togo == 0) {


  if (!pkt->addr[pkt->index].addr) {
   pkt->addr[pkt->index].addr =
    dma_map_single(&dd->pcidev->dev,
     pkt->addr[pkt->index].kvaddr,
     pkt->addr[pkt->index].dma_length,
     DMA_TO_DEVICE);
   if (dma_mapping_error(&dd->pcidev->dev,
     pkt->addr[pkt->index].addr)) {
    ret = -ENOMEM;
    goto done;
   }
   pkt->addr[pkt->index].dma_mapped = 1;
  }

  goto done;
 }


 if (pkt->tiddma) {
  pkt->tidsm[pkt->tidsmidx].length -= newlen;
  if (pkt->tidsm[pkt->tidsmidx].length) {
   pkt->tidsm[pkt->tidsmidx].offset += newlen;
  } else {
   pkt->tidsmidx++;
   if (pkt->tidsmidx == pkt->tidsmcount) {
    ret = -EFAULT;
    goto done;
   }
  }
 }






 if (lastdesc == 0)
  goto done;
 pbclen = pkt->addr[pkt->index].length;
 pbcvaddr = qib_user_sdma_alloc_header(pq, pbclen, &pbcdaddr);
 if (!pbcvaddr) {
  ret = -ENOMEM;
  goto done;
 }

 pbc16 = (__le16 *)pkt->addr[pkt->index].kvaddr;
 memcpy(pbcvaddr, pbc16, pbclen);


 hdr = (struct qib_message_header *)&pbc16[4];


 pbc16[0] = cpu_to_le16(le16_to_cpu(pbc16[0])-(pkt->bytes_togo>>2));


 hdr->lrh[2] = cpu_to_be16(le16_to_cpu(pbc16[0]));

 if (pkt->tiddma) {

  hdr->iph.pkt_flags =
   cpu_to_le16(le16_to_cpu(hdr->iph.pkt_flags)|0x2);

  hdr->flags &= ~(0x04|0x20);
 } else {

  hdr->bth[0] = cpu_to_be32(be32_to_cpu(hdr->bth[0])&0xFFCFFFFF);

  hdr->flags &= ~(0x04);
 }


 vcto = le32_to_cpu(hdr->iph.ver_ctxt_tid_offset);
 hdr->iph.chksum = cpu_to_le16(QIB_LRH_BTH +
  be16_to_cpu(hdr->lrh[2]) -
  ((vcto>>16)&0xFFFF) - (vcto&0xFFFF) -
  le16_to_cpu(hdr->iph.pkt_flags));



 if (!pkt->addr[pkt->index].addr) {
  pkt->addr[pkt->index].addr =
   dma_map_single(&dd->pcidev->dev,
    pkt->addr[pkt->index].kvaddr,
    pkt->addr[pkt->index].dma_length,
    DMA_TO_DEVICE);
  if (dma_mapping_error(&dd->pcidev->dev,
    pkt->addr[pkt->index].addr)) {
   ret = -ENOMEM;
   goto done;
  }
  pkt->addr[pkt->index].dma_mapped = 1;
 }


 pbc16 = (__le16 *)pbcvaddr;
 hdr = (struct qib_message_header *)&pbc16[4];


 pbc16[0] = cpu_to_le16(le16_to_cpu(pbc16[0])-(pkt->payload_size>>2));


 hdr->lrh[2] = cpu_to_be16(le16_to_cpu(pbc16[0]));

 if (pkt->tiddma) {

  hdr->iph.ver_ctxt_tid_offset = cpu_to_le32(
   (le32_to_cpu(hdr->iph.ver_ctxt_tid_offset)&0xFF000000) +
   (pkt->tidsm[pkt->tidsmidx].tid<<QLOGIC_IB_I_TID_SHIFT) +
   (pkt->tidsm[pkt->tidsmidx].offset>>2));
 } else {

  hdr->uwords[2] += pkt->payload_size;
 }


 vcto = le32_to_cpu(hdr->iph.ver_ctxt_tid_offset);
 hdr->iph.chksum = cpu_to_le16(QIB_LRH_BTH +
  be16_to_cpu(hdr->lrh[2]) -
  ((vcto>>16)&0xFFFF) - (vcto&0xFFFF) -
  le16_to_cpu(hdr->iph.pkt_flags));


 seqnum.val = be32_to_cpu(hdr->bth[2]);
 if (pkt->tiddma)
  seqnum.seq++;
 else
  seqnum.pkt++;
 hdr->bth[2] = cpu_to_be32(seqnum.val);


 qib_user_sdma_init_frag(pkt, pkt->naddr,
  0, pbclen,
  1, 0,
  0, 0,
  ((void*)0), pbcvaddr,
  pbcdaddr, pbclen);
 pkt->index = pkt->naddr;
 pkt->payload_size = 0;
 pkt->naddr++;
 if (pkt->naddr == pkt->addrlimit) {
  ret = -EFAULT;
  goto done;
 }


 if (newlen != len) {
  if (dma_mapped) {
   put = 0;
   dma_mapped = 0;
   page = ((void*)0);
   kvaddr = ((void*)0);
  }
  len -= newlen;
  offset += newlen;

  goto next_fragment;
 }

done:
 return ret;
}
