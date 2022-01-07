
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_6__ {int * pbc; } ;
struct user_sdma_txreq {int txreq; TYPE_1__ hdr; } ;
struct TYPE_7__ {int * pbc; } ;
struct user_sdma_request {int ahg_idx; TYPE_3__ hdr; struct hfi1_user_sdma_pkt_q* pq; } ;
struct hfi1_user_sdma_pkt_q {int dd; } ;


 int LRH2PBC (scalar_t__) ;
 scalar_t__ PBC2LRH (int) ;
 int SDMA_TXREQ_F_AHG_COPY ;
 int check_header_template (struct user_sdma_request*,TYPE_1__*,scalar_t__,scalar_t__) ;
 int cpu_to_le16 (int) ;
 scalar_t__ get_lrh_len (TYPE_3__,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (TYPE_1__*,TYPE_3__*,int) ;
 int pad_len (scalar_t__) ;
 int sdma_txadd_kvaddr (int ,int *,TYPE_1__*,int) ;
 int sdma_txclean (int ,int *) ;
 int sdma_txinit_ahg (int *,int ,int ,int ,int ,int *,int ,int ) ;
 int user_sdma_txreq_cb ;

__attribute__((used)) static int user_sdma_txadd_ahg(struct user_sdma_request *req,
          struct user_sdma_txreq *tx,
          u32 datalen)
{
 int ret;
 u16 pbclen = le16_to_cpu(req->hdr.pbc[0]);
 u32 lrhlen = get_lrh_len(req->hdr, pad_len(datalen));
 struct hfi1_user_sdma_pkt_q *pq = req->pq;
 memcpy(&tx->hdr, &req->hdr, sizeof(tx->hdr));
 if (PBC2LRH(pbclen) != lrhlen) {
  pbclen = (pbclen & 0xf000) | LRH2PBC(lrhlen);
  tx->hdr.pbc[0] = cpu_to_le16(pbclen);
 }
 ret = check_header_template(req, &tx->hdr, lrhlen, datalen);
 if (ret)
  return ret;
 ret = sdma_txinit_ahg(&tx->txreq, SDMA_TXREQ_F_AHG_COPY,
         sizeof(tx->hdr) + datalen, req->ahg_idx,
         0, ((void*)0), 0, user_sdma_txreq_cb);
 if (ret)
  return ret;
 ret = sdma_txadd_kvaddr(pq->dd, &tx->txreq, &tx->hdr, sizeof(tx->hdr));
 if (ret)
  sdma_txclean(pq->dd, &tx->txreq);
 return ret;
}
