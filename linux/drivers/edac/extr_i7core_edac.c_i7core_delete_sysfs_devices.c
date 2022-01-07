
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {int addrmatch_dev; int chancounts_dev; int is_registered; } ;


 int device_del (int ) ;
 int edac_dbg (int,char*) ;
 int put_device (int ) ;

__attribute__((used)) static void i7core_delete_sysfs_devices(struct mem_ctl_info *mci)
{
 struct i7core_pvt *pvt = mci->pvt_info;

 edac_dbg(1, "\n");

 if (!pvt->is_registered) {
  device_del(pvt->chancounts_dev);
  put_device(pvt->chancounts_dev);
 }
 device_del(pvt->addrmatch_dev);
 put_device(pvt->addrmatch_dev);
}
