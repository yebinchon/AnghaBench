
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;


 unsigned long GID_ATTR_FIND_MASK_DEFAULT ;
 unsigned long GID_ATTR_FIND_MASK_GID ;
 unsigned long GID_ATTR_FIND_MASK_GID_TYPE ;
 unsigned long GID_ATTR_FIND_MASK_NETDEV ;
 int _ib_cache_gid_del (struct ib_device*,int ,union ib_gid*,struct ib_gid_attr*,unsigned long,int) ;

int ib_cache_gid_del(struct ib_device *ib_dev, u8 port,
       union ib_gid *gid, struct ib_gid_attr *attr)
{
 unsigned long mask = GID_ATTR_FIND_MASK_GID |
        GID_ATTR_FIND_MASK_GID_TYPE |
        GID_ATTR_FIND_MASK_DEFAULT |
        GID_ATTR_FIND_MASK_NETDEV;

 return _ib_cache_gid_del(ib_dev, port, gid, attr, mask, 0);
}
