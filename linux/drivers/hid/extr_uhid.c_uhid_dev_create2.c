
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t rd_size; int country; int version; int product; int vendor; int bus; int uniq; int phys; int name; int rd_data; } ;
struct TYPE_6__ {TYPE_1__ create2; } ;
struct uhid_event {TYPE_2__ u; } ;
struct uhid_device {int running; size_t rd_size; int * rd_data; int worker; struct hid_device* hid; } ;
struct TYPE_7__ {int parent; } ;
struct hid_device {TYPE_3__ dev; struct uhid_device* driver_data; int country; int version; int product; int vendor; int bus; int * ll_driver; int uniq; int phys; int name; } ;
struct TYPE_8__ {int this_device; } ;


 int EALREADY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HID_MAX_DESCRIPTOR_SIZE ;
 scalar_t__ IS_ERR (struct hid_device*) ;
 int PTR_ERR (struct hid_device*) ;
 struct hid_device* hid_allocate_device () ;
 int kfree (int *) ;
 void* kmemdup (int ,size_t,int ) ;
 int min (int,int) ;
 int schedule_work (int *) ;
 int strncpy (int ,int ,size_t) ;
 int uhid_hid_driver ;
 TYPE_4__ uhid_misc ;

__attribute__((used)) static int uhid_dev_create2(struct uhid_device *uhid,
       const struct uhid_event *ev)
{
 struct hid_device *hid;
 size_t rd_size, len;
 void *rd_data;
 int ret;

 if (uhid->running)
  return -EALREADY;

 rd_size = ev->u.create2.rd_size;
 if (rd_size <= 0 || rd_size > HID_MAX_DESCRIPTOR_SIZE)
  return -EINVAL;

 rd_data = kmemdup(ev->u.create2.rd_data, rd_size, GFP_KERNEL);
 if (!rd_data)
  return -ENOMEM;

 uhid->rd_size = rd_size;
 uhid->rd_data = rd_data;

 hid = hid_allocate_device();
 if (IS_ERR(hid)) {
  ret = PTR_ERR(hid);
  goto err_free;
 }


 len = min(sizeof(hid->name), sizeof(ev->u.create2.name)) - 1;
 strncpy(hid->name, ev->u.create2.name, len);
 len = min(sizeof(hid->phys), sizeof(ev->u.create2.phys)) - 1;
 strncpy(hid->phys, ev->u.create2.phys, len);
 len = min(sizeof(hid->uniq), sizeof(ev->u.create2.uniq)) - 1;
 strncpy(hid->uniq, ev->u.create2.uniq, len);

 hid->ll_driver = &uhid_hid_driver;
 hid->bus = ev->u.create2.bus;
 hid->vendor = ev->u.create2.vendor;
 hid->product = ev->u.create2.product;
 hid->version = ev->u.create2.version;
 hid->country = ev->u.create2.country;
 hid->driver_data = uhid;
 hid->dev.parent = uhid_misc.this_device;

 uhid->hid = hid;
 uhid->running = 1;





 schedule_work(&uhid->worker);

 return 0;

err_free:
 kfree(uhid->rd_data);
 uhid->rd_data = ((void*)0);
 uhid->rd_size = 0;
 return ret;
}
