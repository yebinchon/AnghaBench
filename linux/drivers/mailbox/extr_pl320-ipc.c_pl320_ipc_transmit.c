
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETIMEDOUT ;
 int IPC_TX_MBOX ;
 int __ipc_rcv (int ,int *) ;
 int __ipc_send (int ,int *) ;
 int init_completion (int *) ;
 int ipc_completion ;
 int ipc_m1_lock ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

int pl320_ipc_transmit(u32 *data)
{
 int ret;

 mutex_lock(&ipc_m1_lock);

 init_completion(&ipc_completion);
 __ipc_send(IPC_TX_MBOX, data);
 ret = wait_for_completion_timeout(&ipc_completion,
       msecs_to_jiffies(1000));
 if (ret == 0) {
  ret = -ETIMEDOUT;
  goto out;
 }

 ret = __ipc_rcv(IPC_TX_MBOX, data);
out:
 mutex_unlock(&ipc_m1_lock);
 return ret;
}
