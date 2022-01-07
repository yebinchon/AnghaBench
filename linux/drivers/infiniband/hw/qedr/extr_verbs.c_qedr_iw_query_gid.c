
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int subnet_prefix; int interface_id; } ;
union ib_gid {TYPE_2__ global; int raw; } ;
typedef int u8 ;
struct qedr_dev {TYPE_1__* ndev; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int dev_addr; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int,int ,int ) ;
 int QEDR_MSG_INIT ;
 int ether_addr_copy (int ,int ) ;
 struct qedr_dev* get_qedr_dev (struct ib_device*) ;
 int memset (int ,int ,int) ;

int qedr_iw_query_gid(struct ib_device *ibdev, u8 port,
        int index, union ib_gid *sgid)
{
 struct qedr_dev *dev = get_qedr_dev(ibdev);

 memset(sgid->raw, 0, sizeof(sgid->raw));
 ether_addr_copy(sgid->raw, dev->ndev->dev_addr);

 DP_DEBUG(dev, QEDR_MSG_INIT, "QUERY sgid[%d]=%llx:%llx\n", index,
   sgid->global.interface_id, sgid->global.subnet_prefix);

 return 0;
}
