
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union ib_gid {int * raw; } ;
typedef int u8 ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__** ports; } ;
struct TYPE_6__ {TYPE_2__ lldi; } ;
struct c4iw_dev {TYPE_3__ rdev; } ;
struct TYPE_4__ {int dev_addr; } ;


 int EINVAL ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int pr_debug (char*,struct ib_device*,int,int,union ib_gid*) ;
 struct c4iw_dev* to_c4iw_dev (struct ib_device*) ;

__attribute__((used)) static int c4iw_query_gid(struct ib_device *ibdev, u8 port, int index,
     union ib_gid *gid)
{
 struct c4iw_dev *dev;

 pr_debug("ibdev %p, port %d, index %d, gid %p\n",
   ibdev, port, index, gid);
 if (!port)
  return -EINVAL;
 dev = to_c4iw_dev(ibdev);
 memset(&(gid->raw[0]), 0, sizeof(gid->raw));
 memcpy(&(gid->raw[0]), dev->rdev.lldi.ports[port-1]->dev_addr, 6);
 return 0;
}
