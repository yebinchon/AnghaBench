
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_hashinfo {int dummy; } ;


 int __inet_inherit_port (struct sock*,struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

__attribute__((used)) static void inet_inherit_port(struct inet_hashinfo *hash_info,
         struct sock *lsk, struct sock *newsk)
{
 local_bh_disable();
 __inet_inherit_port(lsk, newsk);
 local_bh_enable();
}
