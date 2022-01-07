
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int rcu; int * fasync_list; int wait; } ;
struct sock {int * sk_wq; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EBUSY ;
 int RCU_INIT_POINTER (int *,struct socket_wq*) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int init_rcu_head_on_stack (int *) ;
 int init_waitqueue_head (int *) ;
 int lock_sock (struct sock*) ;
 struct socket_wq* rcu_dereference (int *) ;
 int release_sock (struct sock*) ;
 int remove_wait_queue (int ,int *) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int sk_in_state (struct sock*,unsigned int) ;
 int sk_sleep (struct sock*) ;
 int sock_intr_errno (long) ;
 int wait ;

__attribute__((used)) static int wait_for_states(struct sock *sk, unsigned int states)
{
 DECLARE_WAITQUEUE(wait, current);
 struct socket_wq _sk_wq;
 long current_timeo;
 int err = 0;

 current_timeo = 200;





 if (!sk->sk_wq) {
  init_waitqueue_head(&_sk_wq.wait);
  _sk_wq.fasync_list = ((void*)0);
  init_rcu_head_on_stack(&_sk_wq.rcu);
  RCU_INIT_POINTER(sk->sk_wq, &_sk_wq);
 }

 add_wait_queue(sk_sleep(sk), &wait);
 while (!sk_in_state(sk, states)) {
  if (!current_timeo) {
   err = -EBUSY;
   break;
  }
  if (signal_pending(current)) {
   err = sock_intr_errno(current_timeo);
   break;
  }
  set_current_state(TASK_UNINTERRUPTIBLE);
  release_sock(sk);
  if (!sk_in_state(sk, states))
   current_timeo = schedule_timeout(current_timeo);
  __set_current_state(TASK_RUNNING);
  lock_sock(sk);
 }
 remove_wait_queue(sk_sleep(sk), &wait);

 if (rcu_dereference(sk->sk_wq) == &_sk_wq)
  sk->sk_wq = ((void*)0);
 return err;
}
