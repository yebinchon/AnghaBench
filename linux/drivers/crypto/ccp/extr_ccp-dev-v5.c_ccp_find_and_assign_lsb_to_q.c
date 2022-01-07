
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {int cmd_q_count; int dev; struct ccp_cmd_queue* cmd_q; } ;
struct ccp_cmd_queue {int lsb; int lsbmask; } ;


 int DECLARE_BITMAP (unsigned long*,int) ;
 int EINVAL ;
 int MAX_LSB_CNT ;
 int bitmap_clear (unsigned long*,int,int) ;
 int bitmap_copy (unsigned long*,int ,int) ;
 int bitmap_weight (int ,int) ;
 int dev_dbg (int ,char*,int,int) ;
 int find_first_bit (unsigned long*,int) ;
 unsigned long* qlsb ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static int ccp_find_and_assign_lsb_to_q(struct ccp_device *ccp,
     int lsb_cnt, int n_lsbs,
     unsigned long *lsb_pub)
{
 DECLARE_BITMAP(qlsb, MAX_LSB_CNT);
 int bitno;
 int qlsb_wgt;
 int i;
 for (i = 0; i < ccp->cmd_q_count; i++) {
  struct ccp_cmd_queue *cmd_q = &ccp->cmd_q[i];

  qlsb_wgt = bitmap_weight(cmd_q->lsbmask, MAX_LSB_CNT);

  if (qlsb_wgt == lsb_cnt) {
   bitmap_copy(qlsb, cmd_q->lsbmask, MAX_LSB_CNT);

   bitno = find_first_bit(qlsb, MAX_LSB_CNT);
   while (bitno < MAX_LSB_CNT) {
    if (test_bit(bitno, lsb_pub)) {



     cmd_q->lsb = bitno;
     bitmap_clear(lsb_pub, bitno, 1);
     dev_dbg(ccp->dev,
       "Queue %d gets LSB %d\n",
       i, bitno);
     break;
    }
    bitmap_clear(qlsb, bitno, 1);
    bitno = find_first_bit(qlsb, MAX_LSB_CNT);
   }
   if (bitno >= MAX_LSB_CNT)
    return -EINVAL;
   n_lsbs--;
  }
 }
 return n_lsbs;
}
