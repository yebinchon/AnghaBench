
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EADDRNOTAVAIL ;

__attribute__((used)) static int addr6_resolve(struct sockaddr *src_sock,
    const struct sockaddr *dst_sock,
    struct rdma_dev_addr *addr,
    struct dst_entry **pdst)
{
 return -EADDRNOTAVAIL;
}
