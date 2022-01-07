
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;


 int rdma_addr_size (struct sockaddr*) ;

int rdma_addr_size_in6(struct sockaddr_in6 *addr)
{
 int ret = rdma_addr_size((struct sockaddr *) addr);

 return ret <= sizeof(*addr) ? ret : 0;
}
