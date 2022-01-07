
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
struct sockaddr_ib {int sib_pkey; int sib_addr; } ;
struct rdma_dev_addr {int dev_type; } ;


 int ARPHRD_INFINIBAND ;
 int ib_addr_set_pkey (struct rdma_dev_addr*,int ) ;
 int ntohs (int ) ;
 int rdma_addr_set_sgid (struct rdma_dev_addr*,union ib_gid*) ;

__attribute__((used)) static void cma_translate_ib(struct sockaddr_ib *sib, struct rdma_dev_addr *dev_addr)
{
 dev_addr->dev_type = ARPHRD_INFINIBAND;
 rdma_addr_set_sgid(dev_addr, (union ib_gid *) &sib->sib_addr);
 ib_addr_set_pkey(dev_addr, ntohs(sib->sib_pkey));
}
