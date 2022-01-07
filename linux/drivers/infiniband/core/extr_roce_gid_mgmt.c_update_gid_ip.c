
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct ib_gid_attr {struct net_device* ndev; } ;
struct ib_device {int dummy; } ;
typedef int gid_attr ;
typedef enum gid_op_type { ____Placeholder_gid_op_type } gid_op_type ;


 int memset (struct ib_gid_attr*,int ,int) ;
 int rdma_ip2gid (struct sockaddr*,union ib_gid*) ;
 int update_gid (int,struct ib_device*,int ,union ib_gid*,struct ib_gid_attr*) ;

__attribute__((used)) static void update_gid_ip(enum gid_op_type gid_op,
     struct ib_device *ib_dev,
     u8 port, struct net_device *ndev,
     struct sockaddr *addr)
{
 union ib_gid gid;
 struct ib_gid_attr gid_attr;

 rdma_ip2gid(addr, &gid);
 memset(&gid_attr, 0, sizeof(gid_attr));
 gid_attr.ndev = ndev;

 update_gid(gid_op, ib_dev, port, &gid, &gid_attr);
}
