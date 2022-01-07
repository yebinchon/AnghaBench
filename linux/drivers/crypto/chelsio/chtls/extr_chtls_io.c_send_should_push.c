
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int corked (int ,int) ;
 scalar_t__ should_push (struct sock*) ;
 int tcp_sk (struct sock*) ;

__attribute__((used)) static bool send_should_push(struct sock *sk, int flags)
{
 return should_push(sk) && !corked(tcp_sk(sk), flags);
}
