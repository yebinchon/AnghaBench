
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int ver_tid_offset; } ;
struct TYPE_8__ {TYPE_3__ kdeth; } ;
struct TYPE_5__ {int fragsize; int ctrl; } ;
struct user_sdma_request {int* tids; size_t tididx; TYPE_4__ hdr; TYPE_1__ info; } ;
struct TYPE_6__ {int ver_tid_offset; } ;
struct hfi1_pkt_header {TYPE_2__ kdeth; } ;
typedef int __le32 ;


 int CTRL ;
 int EINVAL ;
 scalar_t__ EXPECTED ;
 int EXP_TID_GET (int,int ) ;
 int IDX ;
 int KDETH_GET (int ,int ) ;
 int KDETH_OM_LARGE ;
 int KDETH_OM_SMALL ;
 int LEN ;
 int OFFSET ;
 int OM ;
 int PAGE_SIZE ;
 int PIO_BLOCK_SIZE ;
 int TID ;
 int TIDCTRL ;
 int get_lrh_len (struct hfi1_pkt_header,int) ;
 scalar_t__ req_opcode (int ) ;

__attribute__((used)) static int check_header_template(struct user_sdma_request *req,
     struct hfi1_pkt_header *hdr, u32 lrhlen,
     u32 datalen)
{
 if (req->info.fragsize % PIO_BLOCK_SIZE || lrhlen & 0x3 ||
     lrhlen > get_lrh_len(*hdr, req->info.fragsize))
  return -EINVAL;

 if (req_opcode(req->info.ctrl) == EXPECTED) {






  u32 tidval = req->tids[req->tididx],
   tidlen = EXP_TID_GET(tidval, LEN) * PAGE_SIZE,
   tididx = EXP_TID_GET(tidval, IDX),
   tidctrl = EXP_TID_GET(tidval, CTRL),
   tidoff;
  __le32 kval = hdr->kdeth.ver_tid_offset;

  tidoff = KDETH_GET(kval, OFFSET) *
     (KDETH_GET(req->hdr.kdeth.ver_tid_offset, OM) ?
      KDETH_OM_LARGE : KDETH_OM_SMALL);







  if ((tidoff + datalen > tidlen) ||
      KDETH_GET(kval, TIDCTRL) != tidctrl ||
      KDETH_GET(kval, TID) != tididx)
   return -EINVAL;
 }
 return 0;
}
