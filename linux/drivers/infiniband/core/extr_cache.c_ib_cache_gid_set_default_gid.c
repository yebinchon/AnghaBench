
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_gid_attr {unsigned int gid_type; struct net_device* ndev; } ;
struct ib_device {int dummy; } ;
typedef int gid_attr ;
typedef enum ib_cache_gid_default_mode { ____Placeholder_ib_cache_gid_default_mode } ib_cache_gid_default_mode ;


 unsigned long GID_ATTR_FIND_MASK_DEFAULT ;
 unsigned long GID_ATTR_FIND_MASK_GID_TYPE ;
 unsigned long GID_ATTR_FIND_MASK_NETDEV ;
 int IB_CACHE_GID_DEFAULT_MODE_DELETE ;
 int IB_CACHE_GID_DEFAULT_MODE_SET ;
 unsigned int IB_GID_TYPE_SIZE ;
 int __ib_cache_gid_add (struct ib_device*,int ,union ib_gid*,struct ib_gid_attr*,unsigned long,int) ;
 int _ib_cache_gid_del (struct ib_device*,int ,union ib_gid*,struct ib_gid_attr*,unsigned long,int) ;
 int make_default_gid (struct net_device*,union ib_gid*) ;
 int memset (struct ib_gid_attr*,int ,int) ;

void ib_cache_gid_set_default_gid(struct ib_device *ib_dev, u8 port,
      struct net_device *ndev,
      unsigned long gid_type_mask,
      enum ib_cache_gid_default_mode mode)
{
 union ib_gid gid = { };
 struct ib_gid_attr gid_attr;
 unsigned int gid_type;
 unsigned long mask;

 mask = GID_ATTR_FIND_MASK_GID_TYPE |
        GID_ATTR_FIND_MASK_DEFAULT |
        GID_ATTR_FIND_MASK_NETDEV;
 memset(&gid_attr, 0, sizeof(gid_attr));
 gid_attr.ndev = ndev;

 for (gid_type = 0; gid_type < IB_GID_TYPE_SIZE; ++gid_type) {
  if (1UL << gid_type & ~gid_type_mask)
   continue;

  gid_attr.gid_type = gid_type;

  if (mode == IB_CACHE_GID_DEFAULT_MODE_SET) {
   make_default_gid(ndev, &gid);
   __ib_cache_gid_add(ib_dev, port, &gid,
        &gid_attr, mask, 1);
  } else if (mode == IB_CACHE_GID_DEFAULT_MODE_DELETE) {
   _ib_cache_gid_del(ib_dev, port, &gid,
       &gid_attr, mask, 1);
  }
 }
}
