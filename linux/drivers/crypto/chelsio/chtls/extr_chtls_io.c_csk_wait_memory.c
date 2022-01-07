
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_shutdown; int sk_write_pending; scalar_t__ sk_err; TYPE_1__* sk_socket; } ;
struct chtls_dev {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int EPIPE ;
 int HZ ;
 long MAX_SCHEDULE_TIMEOUT ;
 int SEND_SHUTDOWN ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int add_wait_queue (int ,int *) ;
 scalar_t__ csk_mem_free (struct chtls_dev*,struct sock*) ;
 int current ;
 int prandom_u32 () ;
 int remove_wait_queue (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int,int *) ;
 int sock_intr_errno (long) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static int csk_wait_memory(struct chtls_dev *cdev,
      struct sock *sk, long *timeo_p)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 int err = 0;
 long current_timeo;
 long vm_wait = 0;
 bool noblock;

 current_timeo = *timeo_p;
 noblock = (*timeo_p ? 0 : 1);
 if (csk_mem_free(cdev, sk)) {
  current_timeo = (prandom_u32() % (HZ / 5)) + 2;
  vm_wait = (prandom_u32() % (HZ / 5)) + 2;
 }

 add_wait_queue(sk_sleep(sk), &wait);
 while (1) {
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);

  if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN))
   goto do_error;
  if (!*timeo_p) {
   if (noblock)
    set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
   goto do_nonblock;
  }
  if (signal_pending(current))
   goto do_interrupted;
  sk_clear_bit(SOCKWQ_ASYNC_NOSPACE, sk);
  if (csk_mem_free(cdev, sk) && !vm_wait)
   break;

  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  sk->sk_write_pending++;
  sk_wait_event(sk, &current_timeo, sk->sk_err ||
         (sk->sk_shutdown & SEND_SHUTDOWN) ||
         (csk_mem_free(cdev, sk) && !vm_wait), &wait);
  sk->sk_write_pending--;

  if (vm_wait) {
   vm_wait -= current_timeo;
   current_timeo = *timeo_p;
   if (current_timeo != MAX_SCHEDULE_TIMEOUT) {
    current_timeo -= vm_wait;
    if (current_timeo < 0)
     current_timeo = 0;
   }
   vm_wait = 0;
  }
  *timeo_p = current_timeo;
 }
do_rm_wq:
 remove_wait_queue(sk_sleep(sk), &wait);
 return err;
do_error:
 err = -EPIPE;
 goto do_rm_wq;
do_nonblock:
 err = -EAGAIN;
 goto do_rm_wq;
do_interrupted:
 err = sock_intr_errno(*timeo_p);
 goto do_rm_wq;
}
