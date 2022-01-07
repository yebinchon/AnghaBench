
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int * raw; } ;
typedef int u8 ;
struct siw_device {TYPE_1__* netdev; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int memcpy (int *,int ,int) ;
 int memset (union ib_gid*,int ,int) ;
 struct siw_device* to_siw_dev (struct ib_device*) ;

int siw_query_gid(struct ib_device *base_dev, u8 port, int idx,
    union ib_gid *gid)
{
 struct siw_device *sdev = to_siw_dev(base_dev);


 memset(gid, 0, sizeof(*gid));
 memcpy(&gid->raw[0], sdev->netdev->dev_addr, 6);

 return 0;
}
