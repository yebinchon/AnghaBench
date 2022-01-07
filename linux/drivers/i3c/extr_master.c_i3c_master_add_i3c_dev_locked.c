
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {int id; } ;
struct i3c_master_controller {TYPE_3__ bus; int dev; } ;
struct i3c_ibi_setup {scalar_t__ handler; int num_slots; int max_payload_len; } ;
struct i3c_device_info {scalar_t__ dyn_addr; } ;
struct TYPE_9__ {scalar_t__ dyn_addr; int pid; int static_addr; } ;
struct i3c_dev_desc {TYPE_5__* dev; int ibi_lock; TYPE_4__ info; TYPE_2__* boardinfo; TYPE_1__* ibi; } ;
struct TYPE_10__ {struct i3c_dev_desc* desc; } ;
struct TYPE_7__ {scalar_t__ init_dyn_addr; } ;
struct TYPE_6__ {scalar_t__ enabled; int num_slots; int max_payload_len; scalar_t__ handler; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct i3c_dev_desc*) ;
 int PTR_ERR (struct i3c_dev_desc*) ;
 int dev_err (int *,char*,int ,int ) ;
 int i3c_dev_disable_ibi_locked (struct i3c_dev_desc*) ;
 int i3c_dev_enable_ibi_locked (struct i3c_dev_desc*) ;
 int i3c_dev_free_ibi_locked (struct i3c_dev_desc*) ;
 int i3c_dev_request_ibi_locked (struct i3c_dev_desc*,struct i3c_ibi_setup*) ;
 struct i3c_dev_desc* i3c_master_alloc_i3c_dev (struct i3c_master_controller*,struct i3c_device_info*) ;
 int i3c_master_attach_i3c_dev (struct i3c_master_controller*,struct i3c_dev_desc*) ;
 int i3c_master_detach_i3c_dev (struct i3c_dev_desc*) ;
 int i3c_master_free_i3c_dev (struct i3c_dev_desc*) ;
 int i3c_master_reattach_i3c_dev (struct i3c_dev_desc*,scalar_t__) ;
 int i3c_master_retrieve_dev_info (struct i3c_dev_desc*) ;
 struct i3c_dev_desc* i3c_master_search_i3c_dev_duplicate (struct i3c_dev_desc*) ;
 int i3c_master_setnewda_locked (struct i3c_master_controller*,scalar_t__,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i3c_master_add_i3c_dev_locked(struct i3c_master_controller *master,
      u8 addr)
{
 struct i3c_device_info info = { .dyn_addr = addr };
 struct i3c_dev_desc *newdev, *olddev;
 u8 old_dyn_addr = addr, expected_dyn_addr;
 struct i3c_ibi_setup ibireq = { };
 bool enable_ibi = 0;
 int ret;

 if (!master)
  return -EINVAL;

 newdev = i3c_master_alloc_i3c_dev(master, &info);
 if (IS_ERR(newdev))
  return PTR_ERR(newdev);

 ret = i3c_master_attach_i3c_dev(master, newdev);
 if (ret)
  goto err_free_dev;

 ret = i3c_master_retrieve_dev_info(newdev);
 if (ret)
  goto err_detach_dev;

 olddev = i3c_master_search_i3c_dev_duplicate(newdev);
 if (olddev) {
  newdev->boardinfo = olddev->boardinfo;
  newdev->info.static_addr = olddev->info.static_addr;
  newdev->dev = olddev->dev;
  if (newdev->dev)
   newdev->dev->desc = newdev;







  mutex_lock(&olddev->ibi_lock);
  if (olddev->ibi) {
   ibireq.handler = olddev->ibi->handler;
   ibireq.max_payload_len = olddev->ibi->max_payload_len;
   ibireq.num_slots = olddev->ibi->num_slots;

   if (olddev->ibi->enabled) {
    enable_ibi = 1;
    i3c_dev_disable_ibi_locked(olddev);
   }

   i3c_dev_free_ibi_locked(olddev);
  }
  mutex_unlock(&olddev->ibi_lock);

  old_dyn_addr = olddev->info.dyn_addr;

  i3c_master_detach_i3c_dev(olddev);
  i3c_master_free_i3c_dev(olddev);
 }

 ret = i3c_master_reattach_i3c_dev(newdev, old_dyn_addr);
 if (ret)
  goto err_detach_dev;
 if (old_dyn_addr && old_dyn_addr != newdev->info.dyn_addr)
  expected_dyn_addr = old_dyn_addr;
 else if (newdev->boardinfo && newdev->boardinfo->init_dyn_addr)
  expected_dyn_addr = newdev->boardinfo->init_dyn_addr;
 else
  expected_dyn_addr = newdev->info.dyn_addr;

 if (newdev->info.dyn_addr != expected_dyn_addr) {




  ret = i3c_master_setnewda_locked(master,
       newdev->info.dyn_addr,
       expected_dyn_addr);
  if (!ret) {
   old_dyn_addr = newdev->info.dyn_addr;
   newdev->info.dyn_addr = expected_dyn_addr;
   i3c_master_reattach_i3c_dev(newdev, old_dyn_addr);
  } else {
   dev_err(&master->dev,
    "Failed to assign reserved/old address to device %d%llx",
    master->bus.id, newdev->info.pid);
  }
 }
 if (ibireq.handler) {
  mutex_lock(&newdev->ibi_lock);
  ret = i3c_dev_request_ibi_locked(newdev, &ibireq);
  if (ret) {
   dev_err(&master->dev,
    "Failed to request IBI on device %d-%llx",
    master->bus.id, newdev->info.pid);
  } else if (enable_ibi) {
   ret = i3c_dev_enable_ibi_locked(newdev);
   if (ret)
    dev_err(&master->dev,
     "Failed to re-enable IBI on device %d-%llx",
     master->bus.id, newdev->info.pid);
  }
  mutex_unlock(&newdev->ibi_lock);
 }

 return 0;

err_detach_dev:
 if (newdev->dev && newdev->dev->desc)
  newdev->dev->desc = ((void*)0);

 i3c_master_detach_i3c_dev(newdev);

err_free_dev:
 i3c_master_free_i3c_dev(newdev);

 return ret;
}
