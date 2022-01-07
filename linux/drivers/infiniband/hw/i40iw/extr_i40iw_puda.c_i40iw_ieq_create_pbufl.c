
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct list_head {int dummy; } ;
struct i40iw_puda_buf {scalar_t__ datalen; scalar_t__ seqnum; int list; } ;
struct i40iw_pfpdu {int bad_seq_num; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_SEQ_NUM ;
 int I40IW_ERR_list_empty ;
 struct i40iw_puda_buf* i40iw_puda_get_listbuf (struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static enum i40iw_status_code i40iw_ieq_create_pbufl(
           struct i40iw_pfpdu *pfpdu,
           struct list_head *rxlist,
           struct list_head *pbufl,
           struct i40iw_puda_buf *buf,
           u16 fpdu_len)
{
 enum i40iw_status_code status = 0;
 struct i40iw_puda_buf *nextbuf;
 u32 nextseqnum;
 u16 plen = fpdu_len - buf->datalen;
 bool done = 0;

 nextseqnum = buf->seqnum + buf->datalen;
 do {
  nextbuf = i40iw_puda_get_listbuf(rxlist);
  if (!nextbuf) {
   status = I40IW_ERR_list_empty;
   break;
  }
  list_add_tail(&nextbuf->list, pbufl);
  if (nextbuf->seqnum != nextseqnum) {
   pfpdu->bad_seq_num++;
   status = I40IW_ERR_SEQ_NUM;
   break;
  }
  if (nextbuf->datalen >= plen) {
   done = 1;
  } else {
   plen -= nextbuf->datalen;
   nextseqnum = nextbuf->seqnum + nextbuf->datalen;
  }

 } while (!done);

 return status;
}
