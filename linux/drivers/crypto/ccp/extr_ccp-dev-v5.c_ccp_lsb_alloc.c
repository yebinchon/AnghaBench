
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccp_device {scalar_t__ sb_avail; int sb_queue; int sb_mutex; int lsbmap; } ;
struct ccp_cmd_queue {int lsb; struct ccp_device* ccp; int lsbmap; } ;


 int LSB_SIZE ;
 int MAX_LSB_CNT ;
 scalar_t__ bitmap_find_next_zero_area (int ,int,int ,unsigned int,int ) ;
 int bitmap_set (int ,int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wait_event_interruptible (int ,scalar_t__) ;

__attribute__((used)) static u32 ccp_lsb_alloc(struct ccp_cmd_queue *cmd_q, unsigned int count)
{
 struct ccp_device *ccp;
 int start;


 if (cmd_q->lsb >= 0) {
  start = (u32)bitmap_find_next_zero_area(cmd_q->lsbmap,
       LSB_SIZE,
       0, count, 0);
  if (start < LSB_SIZE) {
   bitmap_set(cmd_q->lsbmap, start, count);
   return start + cmd_q->lsb * LSB_SIZE;
  }
 }


 ccp = cmd_q->ccp;
 for (;;) {
  mutex_lock(&ccp->sb_mutex);

  start = (u32)bitmap_find_next_zero_area(ccp->lsbmap,
       MAX_LSB_CNT * LSB_SIZE,
       0,
       count, 0);
  if (start <= MAX_LSB_CNT * LSB_SIZE) {
   bitmap_set(ccp->lsbmap, start, count);

   mutex_unlock(&ccp->sb_mutex);
   return start;
  }

  ccp->sb_avail = 0;

  mutex_unlock(&ccp->sb_mutex);


  if (wait_event_interruptible(ccp->sb_queue, ccp->sb_avail))
   return 0;
 }
}
