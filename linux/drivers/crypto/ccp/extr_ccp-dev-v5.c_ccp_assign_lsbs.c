
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccp_device {int cmd_q_count; int lsbmap; TYPE_1__* cmd_q; } ;
struct TYPE_2__ {int lsbmask; } ;


 int DECLARE_BITMAP (int ,int) ;
 int EINVAL ;
 int LSB_SIZE ;
 int MAX_LSB_CNT ;
 int bitmap_copy (int ,int ,int) ;
 int bitmap_or (int ,int ,int ,int) ;
 int bitmap_set (int ,int,int) ;
 int bitmap_weight (int ,int) ;
 int bitmap_zero (int ,int) ;
 int ccp_find_and_assign_lsb_to_q (struct ccp_device*,int,int,int ) ;
 int find_first_zero_bit (int ,int) ;
 int lsb_pub ;
 int qlsb ;

__attribute__((used)) static int ccp_assign_lsbs(struct ccp_device *ccp)
{
 DECLARE_BITMAP(lsb_pub, MAX_LSB_CNT);
 DECLARE_BITMAP(qlsb, MAX_LSB_CNT);
 int n_lsbs = 0;
 int bitno;
 int i, lsb_cnt;
 int rc = 0;

 bitmap_zero(lsb_pub, MAX_LSB_CNT);


 for (i = 0; i < ccp->cmd_q_count; i++)
  bitmap_or(lsb_pub,
     lsb_pub, ccp->cmd_q[i].lsbmask,
     MAX_LSB_CNT);

 n_lsbs = bitmap_weight(lsb_pub, MAX_LSB_CNT);

 if (n_lsbs >= ccp->cmd_q_count) {






  for (lsb_cnt = 1;
       n_lsbs && (lsb_cnt <= MAX_LSB_CNT);
       lsb_cnt++) {
   rc = ccp_find_and_assign_lsb_to_q(ccp, lsb_cnt, n_lsbs,
         lsb_pub);
   if (rc < 0)
    return -EINVAL;
   n_lsbs = rc;
  }
 }

 rc = 0;





 bitmap_copy(qlsb, lsb_pub, MAX_LSB_CNT);

 bitno = find_first_zero_bit(qlsb, MAX_LSB_CNT);
 while (bitno < MAX_LSB_CNT) {
  bitmap_set(ccp->lsbmap, bitno * LSB_SIZE, LSB_SIZE);
  bitmap_set(qlsb, bitno, 1);
  bitno = find_first_zero_bit(qlsb, MAX_LSB_CNT);
 }

 return rc;
}
