
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int * sk_prot; } ;


 int chtls_cpl_prot ;

void chtls_install_cpl_ops(struct sock *sk)
{
 sk->sk_prot = &chtls_cpl_prot;
}
