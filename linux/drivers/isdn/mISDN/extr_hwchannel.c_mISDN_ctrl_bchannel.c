
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mISDN_ctrl_req {int op; int p1; int p2; } ;
struct bchannel {int dropcnt; int next_maxlen; int next_minlen; int minlen; int maxlen; int Flags; int fill; } ;


 int EINVAL ;
 int FLG_FILLEMPTY ;
 int FLG_RX_OFF ;
 int MISDN_BCH_FILL_SIZE ;




 int MISDN_CTRL_RX_SIZE_IGNORE ;
 int memset (int ,int,int ) ;
 int pr_info (char*,int) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

int
mISDN_ctrl_bchannel(struct bchannel *bch, struct mISDN_ctrl_req *cq)
{
 int ret = 0;

 switch (cq->op) {
 case 130:
  cq->op = 129 | 131 |
    128;
  break;
 case 131:
  if (cq->p1) {
   memset(bch->fill, cq->p2 & 0xff, MISDN_BCH_FILL_SIZE);
   test_and_set_bit(FLG_FILLEMPTY, &bch->Flags);
  } else {
   test_and_clear_bit(FLG_FILLEMPTY, &bch->Flags);
  }
  break;
 case 128:

  cq->p2 = bch->dropcnt;
  if (cq->p1)
   test_and_set_bit(FLG_RX_OFF, &bch->Flags);
  else
   test_and_clear_bit(FLG_RX_OFF, &bch->Flags);
  bch->dropcnt = 0;
  break;
 case 129:
  if (cq->p2 > MISDN_CTRL_RX_SIZE_IGNORE)
   bch->next_maxlen = cq->p2;
  if (cq->p1 > MISDN_CTRL_RX_SIZE_IGNORE)
   bch->next_minlen = cq->p1;

  cq->p1 = bch->minlen;
  cq->p2 = bch->maxlen;
  break;
 default:
  pr_info("mISDN unhandled control %x operation\n", cq->op);
  ret = -EINVAL;
  break;
 }
 return ret;
}
