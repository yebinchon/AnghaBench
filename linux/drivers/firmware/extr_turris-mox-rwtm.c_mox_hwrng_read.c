
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int retval; } ;
struct mox_rwtm {int buf_phys; int busy; int buf; TYPE_1__ reply; int cmd_done; int mbox; } ;
struct hwrng {scalar_t__ priv; } ;
struct armada_37xx_rwtm_tx_msg {int* args; int command; } ;


 int EBUSY ;
 int MBOX_CMD_GET_RANDOM ;
 int mbox_send_message (int ,struct armada_37xx_rwtm_tx_msg*) ;
 int memcpy (void*,int ,size_t) ;
 int mox_get_status (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int mox_hwrng_read(struct hwrng *rng, void *data, size_t max, bool wait)
{
 struct mox_rwtm *rwtm = (struct mox_rwtm *) rng->priv;
 struct armada_37xx_rwtm_tx_msg msg;
 int ret;

 if (max > 4096)
  max = 4096;

 msg.command = MBOX_CMD_GET_RANDOM;
 msg.args[0] = 1;
 msg.args[1] = rwtm->buf_phys;
 msg.args[2] = (max + 3) & ~3;

 if (!wait) {
  if (!mutex_trylock(&rwtm->busy))
   return -EBUSY;
 } else {
  mutex_lock(&rwtm->busy);
 }

 ret = mbox_send_message(rwtm->mbox, &msg);
 if (ret < 0)
  goto unlock_mutex;

 ret = wait_for_completion_interruptible(&rwtm->cmd_done);
 if (ret < 0)
  goto unlock_mutex;

 ret = mox_get_status(MBOX_CMD_GET_RANDOM, rwtm->reply.retval);
 if (ret < 0)
  goto unlock_mutex;

 memcpy(data, rwtm->buf, max);
 ret = max;

unlock_mutex:
 mutex_unlock(&rwtm->busy);
 return ret;
}
