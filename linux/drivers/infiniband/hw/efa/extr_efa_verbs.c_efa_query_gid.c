
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {int raw; } ;
typedef int u8 ;
struct ib_device {int dummy; } ;
struct efa_dev {int addr; } ;


 int memcpy (int ,int ,int) ;
 struct efa_dev* to_edev (struct ib_device*) ;

int efa_query_gid(struct ib_device *ibdev, u8 port, int index,
    union ib_gid *gid)
{
 struct efa_dev *dev = to_edev(ibdev);

 memcpy(gid->raw, dev->addr, sizeof(dev->addr));

 return 0;
}
