
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_request_sock {int dummy; } ;
struct request_sock_ops {int family; int obj_size; int slab; int destructor; } ;
struct proto {struct request_sock_ops* rsk_prot; } ;


 int chtls_rsk_destructor ;
 int memset (struct request_sock_ops*,int ,int) ;

__attribute__((used)) static inline void chtls_init_rsk_ops(struct proto *chtls_tcp_prot,
          struct request_sock_ops *chtls_tcp_ops,
          struct proto *tcp_prot, int family)
{
 memset(chtls_tcp_ops, 0, sizeof(*chtls_tcp_ops));
 chtls_tcp_ops->family = family;
 chtls_tcp_ops->obj_size = sizeof(struct tcp_request_sock);
 chtls_tcp_ops->destructor = chtls_rsk_destructor;
 chtls_tcp_ops->slab = tcp_prot->rsk_prot->slab;
 chtls_tcp_prot->rsk_prot = chtls_tcp_ops;
}
