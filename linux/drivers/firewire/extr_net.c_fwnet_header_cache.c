
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; } ;
struct neighbour {int ha; struct net_device* dev; } ;
struct hh_cache {int hh_len; scalar_t__ hh_data; } ;
struct fwnet_header {int h_dest; scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int ETH_P_802_3 ;
 int FWNET_HLEN ;
 int HH_DATA_OFF (int) ;
 scalar_t__ cpu_to_be16 (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int fwnet_header_cache(const struct neighbour *neigh,
         struct hh_cache *hh, __be16 type)
{
 struct net_device *net;
 struct fwnet_header *h;

 if (type == cpu_to_be16(ETH_P_802_3))
  return -1;
 net = neigh->dev;
 h = (struct fwnet_header *)((u8 *)hh->hh_data + HH_DATA_OFF(sizeof(*h)));
 h->h_proto = type;
 memcpy(h->h_dest, neigh->ha, net->addr_len);
 hh->hh_len = FWNET_HLEN;

 return 0;
}
