
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int ver_tid_offset; int * swdata; } ;
struct hfi1_pkt_header {TYPE_1__ kdeth; int * bth; int * lrh; int * pbc; } ;
struct user_sdma_txreq {int flags; int txreq; struct hfi1_pkt_header hdr; } ;
struct TYPE_5__ {int comp_idx; int ctrl; } ;
struct TYPE_6__ {int * lrh; int * pbc; } ;
struct user_sdma_request {int seqnum; int* tids; size_t tididx; int tidoffset; int n_tids; TYPE_2__ info; int koffset; TYPE_3__ hdr; struct hfi1_user_sdma_pkt_q* pq; } ;
struct hfi1_user_sdma_pkt_q {int dd; int subctxt; int ctxt; } ;


 int CTRL ;
 int EINVAL ;
 scalar_t__ EXPECTED ;
 int EXP_TID_GET (int,int ) ;
 int IDX ;
 int KDETH_OM_LARGE_SHIFT ;
 int KDETH_OM_MAX_SIZE ;
 int KDETH_OM_SMALL_SHIFT ;
 int KDETH_SET (int ,int ,int) ;
 int LEN ;
 int LRH2PBC (int) ;
 int OFFSET ;
 int OM ;
 int PAGE_SIZE ;
 int PBC2LRH (int) ;
 int SH ;
 int TID ;
 int TIDCTRL ;
 int TXREQ_FLAGS_REQ_ACK ;
 int TXREQ_FLAGS_REQ_DISABLE_SH ;
 int check_header_template (struct user_sdma_request*,struct hfi1_pkt_header*,int,int) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (unsigned long) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int get_lrh_len (struct hfi1_pkt_header,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct hfi1_pkt_header*,TYPE_3__*,int) ;
 int pad_len (int) ;
 scalar_t__ req_opcode (int ) ;
 int sdma_txadd_kvaddr (int ,int *,struct hfi1_pkt_header*,int) ;
 unsigned long set_pkt_bth_psn (int ,int,int) ;
 int trace_hfi1_sdma_user_header (int ,int ,int ,int ,struct hfi1_pkt_header*,int) ;
 int trace_hfi1_sdma_user_tid_info (int ,int ,int ,int ,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_txreq_header(struct user_sdma_request *req,
       struct user_sdma_txreq *tx, u32 datalen)
{
 struct hfi1_user_sdma_pkt_q *pq = req->pq;
 struct hfi1_pkt_header *hdr = &tx->hdr;
 u8 omfactor;
 u16 pbclen;
 int ret;
 u32 tidval = 0, lrhlen = get_lrh_len(*hdr, pad_len(datalen));


 memcpy(hdr, &req->hdr, sizeof(*hdr));





 pbclen = le16_to_cpu(hdr->pbc[0]);
 if (PBC2LRH(pbclen) != lrhlen) {
  pbclen = (pbclen & 0xf000) | LRH2PBC(lrhlen);
  hdr->pbc[0] = cpu_to_le16(pbclen);
  hdr->lrh[2] = cpu_to_be16(lrhlen >> 2);






  if (unlikely(req->seqnum == 2)) {







   req->hdr.pbc[0] = hdr->pbc[0];
   req->hdr.lrh[2] = hdr->lrh[2];
  }
 }





 if (unlikely(!req->seqnum)) {
  ret = check_header_template(req, hdr, lrhlen, datalen);
  if (ret)
   return ret;
  goto done;
 }

 hdr->bth[2] = cpu_to_be32(
  set_pkt_bth_psn(hdr->bth[2],
    (req_opcode(req->info.ctrl) == EXPECTED),
    req->seqnum));


 if (unlikely(tx->flags & TXREQ_FLAGS_REQ_ACK))
  hdr->bth[2] |= cpu_to_be32(1UL << 31);


 hdr->kdeth.swdata[6] = cpu_to_le32(req->koffset);

 if (req_opcode(req->info.ctrl) == EXPECTED) {
  tidval = req->tids[req->tididx];




  if ((req->tidoffset) == (EXP_TID_GET(tidval, LEN) *
      PAGE_SIZE)) {
   req->tidoffset = 0;




   if (++req->tididx > req->n_tids - 1 ||
       !req->tids[req->tididx]) {
    return -EINVAL;
   }
   tidval = req->tids[req->tididx];
  }
  omfactor = EXP_TID_GET(tidval, LEN) * PAGE_SIZE >=
   KDETH_OM_MAX_SIZE ? KDETH_OM_LARGE_SHIFT :
   KDETH_OM_SMALL_SHIFT;

  KDETH_SET(hdr->kdeth.ver_tid_offset, TIDCTRL,
     EXP_TID_GET(tidval, CTRL));

  KDETH_SET(hdr->kdeth.ver_tid_offset, TID,
     EXP_TID_GET(tidval, IDX));

  if (unlikely(tx->flags & TXREQ_FLAGS_REQ_DISABLE_SH))
   KDETH_SET(hdr->kdeth.ver_tid_offset, SH, 0);




  trace_hfi1_sdma_user_tid_info(
   pq->dd, pq->ctxt, pq->subctxt, req->info.comp_idx,
   req->tidoffset, req->tidoffset >> omfactor,
   omfactor != KDETH_OM_SMALL_SHIFT);
  KDETH_SET(hdr->kdeth.ver_tid_offset, OFFSET,
     req->tidoffset >> omfactor);
  KDETH_SET(hdr->kdeth.ver_tid_offset, OM,
     omfactor != KDETH_OM_SMALL_SHIFT);
 }
done:
 trace_hfi1_sdma_user_header(pq->dd, pq->ctxt, pq->subctxt,
        req->info.comp_idx, hdr, tidval);
 return sdma_txadd_kvaddr(pq->dd, &tx->txreq, hdr, sizeof(*hdr));
}
