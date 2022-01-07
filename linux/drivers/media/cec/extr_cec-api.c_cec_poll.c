
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct cec_fh* private_data; } ;
struct cec_fh {scalar_t__ total_queued_events; scalar_t__ queued_msgs; int wait; struct cec_adapter* adap; } ;
struct cec_adapter {scalar_t__ transmit_queue_sz; int lock; scalar_t__ is_configured; } ;
typedef int __poll_t ;


 scalar_t__ CEC_MAX_MSG_TX_QUEUE_SZ ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int cec_is_registered (struct cec_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t cec_poll(struct file *filp,
        struct poll_table_struct *poll)
{
 struct cec_fh *fh = filp->private_data;
 struct cec_adapter *adap = fh->adap;
 __poll_t res = 0;

 poll_wait(filp, &fh->wait, poll);
 if (!cec_is_registered(adap))
  return EPOLLERR | EPOLLHUP;
 mutex_lock(&adap->lock);
 if (adap->is_configured &&
     adap->transmit_queue_sz < CEC_MAX_MSG_TX_QUEUE_SZ)
  res |= EPOLLOUT | EPOLLWRNORM;
 if (fh->queued_msgs)
  res |= EPOLLIN | EPOLLRDNORM;
 if (fh->total_queued_events)
  res |= EPOLLPRI;
 mutex_unlock(&adap->lock);
 return res;
}
