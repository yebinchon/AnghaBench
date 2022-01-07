
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int raw; } ;
typedef int u8 ;
struct ib_device {int dummy; } ;
struct i40iw_device {TYPE_1__* netdev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ether_addr_copy (int ,int ) ;
 int memset (int ,int ,int) ;
 struct i40iw_device* to_iwdev (struct ib_device*) ;

__attribute__((used)) static int i40iw_query_gid(struct ib_device *ibdev,
      u8 port,
      int index,
      union ib_gid *gid)
{
 struct i40iw_device *iwdev = to_iwdev(ibdev);

 memset(gid->raw, 0, sizeof(gid->raw));
 ether_addr_copy(gid->raw, iwdev->netdev->dev_addr);
 return 0;
}
