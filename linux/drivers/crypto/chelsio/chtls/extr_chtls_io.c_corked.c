
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int nonagle; } ;


 int MSG_MORE ;
 int TCP_NAGLE_CORK ;

__attribute__((used)) static bool corked(const struct tcp_sock *tp, int flags)
{
 return (flags & MSG_MORE) || (tp->nonagle & TCP_NAGLE_CORK);
}
