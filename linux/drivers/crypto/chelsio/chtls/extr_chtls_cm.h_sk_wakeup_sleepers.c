
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int dummy; } ;
struct sock {int sk_wq; } ;


 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_sleep (struct sock*) ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 int wake_up_all (int ) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static inline void sk_wakeup_sleepers(struct sock *sk, bool interruptable)
{
 struct socket_wq *wq;

 rcu_read_lock();
 wq = rcu_dereference(sk->sk_wq);
 if (skwq_has_sleeper(wq)) {
  if (interruptable)
   wake_up_interruptible(sk_sleep(sk));
  else
   wake_up_all(sk_sleep(sk));
 }
 rcu_read_unlock();
}
