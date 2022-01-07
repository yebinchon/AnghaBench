
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccp_device {int sb_count; scalar_t__ sb_avail; int sb_queue; int sb_mutex; int sb; int sb_start; } ;
struct ccp_cmd_queue {struct ccp_device* ccp; } ;


 int KSB_START ;
 scalar_t__ bitmap_find_next_zero_area (int ,int,int ,unsigned int,int ) ;
 int bitmap_set (int ,int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wait_event_interruptible (int ,scalar_t__) ;

__attribute__((used)) static u32 ccp_alloc_ksb(struct ccp_cmd_queue *cmd_q, unsigned int count)
{
 int start;
 struct ccp_device *ccp = cmd_q->ccp;

 for (;;) {
  mutex_lock(&ccp->sb_mutex);

  start = (u32)bitmap_find_next_zero_area(ccp->sb,
       ccp->sb_count,
       ccp->sb_start,
       count, 0);
  if (start <= ccp->sb_count) {
   bitmap_set(ccp->sb, start, count);

   mutex_unlock(&ccp->sb_mutex);
   break;
  }

  ccp->sb_avail = 0;

  mutex_unlock(&ccp->sb_mutex);


  if (wait_event_interruptible(ccp->sb_queue, ccp->sb_avail))
   return 0;
 }

 return KSB_START + start;
}
