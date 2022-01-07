
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int src_dev_addr; int dst_dev_addr; } ;
struct dst_entry {int dummy; } ;


 unsigned int IFF_LOOPBACK ;
 unsigned int IFF_NOARP ;
 int MAX_ADDR_LEN ;
 int fetch_ha (struct dst_entry const*,struct rdma_dev_addr*,struct sockaddr const*,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int addr_resolve_neigh(const struct dst_entry *dst,
         const struct sockaddr *dst_in,
         struct rdma_dev_addr *addr,
         unsigned int ndev_flags,
         u32 seq)
{
 int ret = 0;

 if (ndev_flags & IFF_LOOPBACK) {
  memcpy(addr->dst_dev_addr, addr->src_dev_addr, MAX_ADDR_LEN);
 } else {
  if (!(ndev_flags & IFF_NOARP)) {

   ret = fetch_ha(dst, addr, dst_in, seq);
  }
 }
 return ret;
}
