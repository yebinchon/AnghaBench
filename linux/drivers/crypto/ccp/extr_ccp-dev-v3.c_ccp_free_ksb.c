
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {int sb_avail; int sb_queue; int sb_mutex; int sb; } ;
struct ccp_cmd_queue {struct ccp_device* ccp; } ;


 scalar_t__ KSB_START ;
 int bitmap_clear (int ,scalar_t__,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void ccp_free_ksb(struct ccp_cmd_queue *cmd_q, unsigned int start,
    unsigned int count)
{
 struct ccp_device *ccp = cmd_q->ccp;

 if (!start)
  return;

 mutex_lock(&ccp->sb_mutex);

 bitmap_clear(ccp->sb, start - KSB_START, count);

 ccp->sb_avail = 1;

 mutex_unlock(&ccp->sb_mutex);

 wake_up_interruptible_all(&ccp->sb_queue);
}
