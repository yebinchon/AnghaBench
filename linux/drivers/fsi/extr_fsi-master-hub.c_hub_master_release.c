
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_hub {int dummy; } ;
struct device {int dummy; } ;


 int dev_to_fsi_master (struct device*) ;
 int kfree (struct fsi_master_hub*) ;
 struct fsi_master_hub* to_fsi_master_hub (int ) ;

__attribute__((used)) static void hub_master_release(struct device *dev)
{
 struct fsi_master_hub *hub = to_fsi_master_hub(dev_to_fsi_master(dev));

 kfree(hub);
}
