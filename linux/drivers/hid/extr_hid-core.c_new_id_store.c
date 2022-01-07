
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long driver_data; void* product; void* vendor; int group; void* bus; } ;
struct hid_dynid {int list; TYPE_1__ id; } ;
struct hid_driver {int driver; int dyn_lock; int dyn_list; } ;
struct device_driver {int dummy; } ;
typedef size_t ssize_t ;
typedef void* __u32 ;


 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 int HID_GROUP_ANY ;
 int driver_attach (int *) ;
 struct hid_dynid* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,void**,void**,void**,unsigned long*) ;
 struct hid_driver* to_hid_driver (struct device_driver*) ;

__attribute__((used)) static ssize_t new_id_store(struct device_driver *drv, const char *buf,
  size_t count)
{
 struct hid_driver *hdrv = to_hid_driver(drv);
 struct hid_dynid *dynid;
 __u32 bus, vendor, product;
 unsigned long driver_data = 0;
 int ret;

 ret = sscanf(buf, "%x %x %x %lx",
   &bus, &vendor, &product, &driver_data);
 if (ret < 3)
  return -EINVAL;

 dynid = kzalloc(sizeof(*dynid), GFP_KERNEL);
 if (!dynid)
  return -ENOMEM;

 dynid->id.bus = bus;
 dynid->id.group = HID_GROUP_ANY;
 dynid->id.vendor = vendor;
 dynid->id.product = product;
 dynid->id.driver_data = driver_data;

 spin_lock(&hdrv->dyn_lock);
 list_add_tail(&dynid->list, &hdrv->dyn_list);
 spin_unlock(&hdrv->dyn_lock);

 ret = driver_attach(&hdrv->driver);

 return ret ? : count;
}
