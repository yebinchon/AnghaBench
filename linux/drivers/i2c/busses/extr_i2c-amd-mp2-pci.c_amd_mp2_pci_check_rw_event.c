
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct amd_mp2_dev {int dummy; } ;
struct TYPE_4__ {int length; int slave_addr; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
struct amd_i2c_common {int cmd_success; TYPE_3__* msg; TYPE_2__ eventval; struct amd_mp2_dev* mp2_dev; } ;
struct TYPE_6__ {int len; int addr; } ;


 int dev_err (int ,char*,int,int) ;
 int ndev_dev (struct amd_mp2_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void amd_mp2_pci_check_rw_event(struct amd_i2c_common *i2c_common)
{
 struct amd_mp2_dev *privdata = i2c_common->mp2_dev;
 int len = i2c_common->eventval.r.length;
 u32 slave_addr = i2c_common->eventval.r.slave_addr;
 bool err = 0;

 if (unlikely(len != i2c_common->msg->len)) {
  dev_err(ndev_dev(privdata),
   "length %d in event doesn't match buffer length %d!\n",
   len, i2c_common->msg->len);
  err = 1;
 }

 if (unlikely(slave_addr != i2c_common->msg->addr)) {
  dev_err(ndev_dev(privdata),
   "unexpected slave address %x (expected: %x)!\n",
   slave_addr, i2c_common->msg->addr);
  err = 1;
 }

 if (!err)
  i2c_common->cmd_success = 1;
}
