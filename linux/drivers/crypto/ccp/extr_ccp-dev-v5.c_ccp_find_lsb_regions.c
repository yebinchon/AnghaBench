
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ccp_cmd_queue {int id; TYPE_1__* ccp; int lsbmask; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int LSB_REGION_WIDTH ;
 int MAX_LSB_CNT ;
 int bitmap_set (int ,int,int) ;
 int bitmap_weight (int ,int) ;
 int dev_dbg (int ,char*,int,int) ;

__attribute__((used)) static int ccp_find_lsb_regions(struct ccp_cmd_queue *cmd_q, u64 status)
{
 int q_mask = 1 << cmd_q->id;
 int queues = 0;
 int j;




 for (j = 1; j < MAX_LSB_CNT; j++) {
  if (status & q_mask)
   bitmap_set(cmd_q->lsbmask, j, 1);
  status >>= LSB_REGION_WIDTH;
 }
 queues = bitmap_weight(cmd_q->lsbmask, MAX_LSB_CNT);
 dev_dbg(cmd_q->ccp->dev, "Queue %d can access %d LSB regions\n",
   cmd_q->id, queues);

 return queues ? 0 : -EINVAL;
}
