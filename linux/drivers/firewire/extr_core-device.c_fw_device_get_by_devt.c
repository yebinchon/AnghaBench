
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int dummy; } ;
typedef int dev_t ;


 int MINOR (int ) ;
 int down_read (int *) ;
 int fw_device_get (struct fw_device*) ;
 int fw_device_idr ;
 int fw_device_rwsem ;
 struct fw_device* idr_find (int *,int ) ;
 int up_read (int *) ;

struct fw_device *fw_device_get_by_devt(dev_t devt)
{
 struct fw_device *device;

 down_read(&fw_device_rwsem);
 device = idr_find(&fw_device_idr, MINOR(devt));
 if (device)
  fw_device_get(device);
 up_read(&fw_device_rwsem);

 return device;
}
