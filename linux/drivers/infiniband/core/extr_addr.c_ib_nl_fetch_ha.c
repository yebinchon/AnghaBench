
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rdma_dev_addr {int dummy; } ;


 int EADDRNOTAVAIL ;
 int RDMA_NL_GROUP_LS ;
 int ib_nl_ip_send_msg (struct rdma_dev_addr*,void const*,int ,int ) ;
 int rdma_nl_chk_listeners (int ) ;

__attribute__((used)) static int ib_nl_fetch_ha(struct rdma_dev_addr *dev_addr,
     const void *daddr, u32 seq, u16 family)
{
 if (!rdma_nl_chk_listeners(RDMA_NL_GROUP_LS))
  return -EADDRNOTAVAIL;

 return ib_nl_ip_send_msg(dev_addr, daddr, seq, family);
}
