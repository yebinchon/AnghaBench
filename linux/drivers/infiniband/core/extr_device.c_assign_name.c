
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_device {int index; int dev; int name; } ;


 int ENFILE ;
 int GFP_KERNEL ;
 int IB_DEVICE_NAME_MAX ;
 scalar_t__ __ib_device_get_by_name (int ) ;
 int alloc_name (struct ib_device*,char const*) ;
 int dev_name (int *) ;
 int dev_set_name (int *,char const*) ;
 int devices ;
 int devices_rwsem ;
 int down_write (int *) ;
 scalar_t__ strchr (char const*,char) ;
 int strlcpy (int ,int ,int ) ;
 int up_write (int *) ;
 int xa_alloc_cyclic (int *,int *,struct ib_device*,int ,int *,int ) ;
 int xa_limit_31b ;

__attribute__((used)) static int assign_name(struct ib_device *device, const char *name)
{
 static u32 last_id;
 int ret;

 down_write(&devices_rwsem);

 if (strchr(name, '%'))
  ret = alloc_name(device, name);
 else
  ret = dev_set_name(&device->dev, name);
 if (ret)
  goto out;

 if (__ib_device_get_by_name(dev_name(&device->dev))) {
  ret = -ENFILE;
  goto out;
 }
 strlcpy(device->name, dev_name(&device->dev), IB_DEVICE_NAME_MAX);

 ret = xa_alloc_cyclic(&devices, &device->index, device, xa_limit_31b,
   &last_id, GFP_KERNEL);
 if (ret > 0)
  ret = 0;

out:
 up_write(&devices_rwsem);
 return ret;
}
