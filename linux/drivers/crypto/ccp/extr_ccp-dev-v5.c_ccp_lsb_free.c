
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {int sb_avail; int sb_queue; int sb_mutex; int lsbmap; } ;
struct ccp_cmd_queue {unsigned int lsb; struct ccp_device* ccp; int lsbmap; } ;


 int bitmap_clear (int ,unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void ccp_lsb_free(struct ccp_cmd_queue *cmd_q, unsigned int start,
    unsigned int count)
{
 if (!start)
  return;

 if (cmd_q->lsb == start) {

  bitmap_clear(cmd_q->lsbmap, start, count);
 } else {

  struct ccp_device *ccp = cmd_q->ccp;

  mutex_lock(&ccp->sb_mutex);
  bitmap_clear(ccp->lsbmap, start, count);
  ccp->sb_avail = 1;
  mutex_unlock(&ccp->sb_mutex);
  wake_up_interruptible_all(&ccp->sb_queue);
 }
}
