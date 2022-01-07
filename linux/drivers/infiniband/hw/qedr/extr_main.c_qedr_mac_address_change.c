
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subnet_prefix; } ;
union ib_gid {int * raw; TYPE_1__ global; } ;
typedef int u8 ;
struct qedr_dev {int* gsi_ll2_mac_address; TYPE_3__* ndev; int cdev; TYPE_2__* ops; union ib_gid* sgid_tbl; } ;
typedef int guid ;
struct TYPE_6__ {int dev_addr; } ;
struct TYPE_5__ {int (* ll2_set_mac_filter ) (int ,int*,int ) ;} ;


 int DP_ERR (struct qedr_dev*,char*) ;
 int IB_EVENT_GID_CHANGE ;
 int QEDR_PORT ;
 int cpu_to_be64 (int) ;
 int ether_addr_copy (int*,int ) ;
 int memcpy (int *,int*,int) ;
 int qedr_ib_dispatch_event (struct qedr_dev*,int ,int ) ;
 int stub1 (int ,int*,int ) ;

__attribute__((used)) static void qedr_mac_address_change(struct qedr_dev *dev)
{
 union ib_gid *sgid = &dev->sgid_tbl[0];
 u8 guid[8], mac_addr[6];
 int rc;


 ether_addr_copy(&mac_addr[0], dev->ndev->dev_addr);
 guid[0] = mac_addr[0] ^ 2;
 guid[1] = mac_addr[1];
 guid[2] = mac_addr[2];
 guid[3] = 0xff;
 guid[4] = 0xfe;
 guid[5] = mac_addr[3];
 guid[6] = mac_addr[4];
 guid[7] = mac_addr[5];
 sgid->global.subnet_prefix = cpu_to_be64(0xfe80000000000000LL);
 memcpy(&sgid->raw[8], guid, sizeof(guid));


 rc = dev->ops->ll2_set_mac_filter(dev->cdev,
       dev->gsi_ll2_mac_address,
       dev->ndev->dev_addr);

 ether_addr_copy(dev->gsi_ll2_mac_address, dev->ndev->dev_addr);

 qedr_ib_dispatch_event(dev, QEDR_PORT, IB_EVENT_GID_CHANGE);

 if (rc)
  DP_ERR(dev, "Error updating mac filter\n");
}
