
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tv ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct __kernel_old_timeval {int dummy; } ;
struct TYPE_2__ {int cmask; } ;


 int MISDN_TIME_STAMP ;
 int SOL_MISDN ;
 TYPE_1__* _pms (struct sock*) ;
 int put_cmsg (struct msghdr*,int ,int,int,struct __kernel_old_timeval*) ;
 int skb_get_timestamp (struct sk_buff*,struct __kernel_old_timeval*) ;

__attribute__((used)) static inline void
mISDN_sock_cmsg(struct sock *sk, struct msghdr *msg, struct sk_buff *skb)
{
 struct __kernel_old_timeval tv;

 if (_pms(sk)->cmask & MISDN_TIME_STAMP) {
  skb_get_timestamp(skb, &tv);
  put_cmsg(msg, SOL_MISDN, MISDN_TIME_STAMP, sizeof(tv), &tv);
 }
}
