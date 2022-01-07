
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_addr {int dst_dev_addr; } ;
struct neighbour {int nud_state; } ;
struct dst_entry {int dev; } ;


 int ENODATA ;
 int NUD_VALID ;
 struct neighbour* dst_neigh_lookup (struct dst_entry const*,void const*) ;
 int neigh_event_send (struct neighbour*,int *) ;
 int neigh_ha_snapshot (int ,struct neighbour*,int ) ;
 int neigh_release (struct neighbour*) ;

__attribute__((used)) static int dst_fetch_ha(const struct dst_entry *dst,
   struct rdma_dev_addr *dev_addr,
   const void *daddr)
{
 struct neighbour *n;
 int ret = 0;

 n = dst_neigh_lookup(dst, daddr);
 if (!n)
  return -ENODATA;

 if (!(n->nud_state & NUD_VALID)) {
  neigh_event_send(n, ((void*)0));
  ret = -ENODATA;
 } else {
  neigh_ha_snapshot(dev_addr->dst_dev_addr, n, dst->dev);
 }

 neigh_release(n);

 return ret;
}
