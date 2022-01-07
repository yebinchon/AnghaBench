
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rd_size; int country; int version; int product; int vendor; int bus; int uniq; int phys; int name; int rd_data; } ;
struct uhid_create_req {scalar_t__ rd_size; int country; int version; int product; int vendor; int bus; int uniq; int phys; int name; int rd_data; } ;
struct TYPE_4__ {TYPE_1__ create2; struct uhid_create_req create; } ;
struct uhid_event {TYPE_2__ u; } ;
struct uhid_device {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ HID_MAX_DESCRIPTOR_SIZE ;
 scalar_t__ copy_from_user (int *,int ,scalar_t__) ;
 int memcpy (int ,int ,int) ;
 int uhid_dev_create2 (struct uhid_device*,struct uhid_event*) ;

__attribute__((used)) static int uhid_dev_create(struct uhid_device *uhid,
      struct uhid_event *ev)
{
 struct uhid_create_req orig;

 orig = ev->u.create;

 if (orig.rd_size <= 0 || orig.rd_size > HID_MAX_DESCRIPTOR_SIZE)
  return -EINVAL;
 if (copy_from_user(&ev->u.create2.rd_data, orig.rd_data, orig.rd_size))
  return -EFAULT;

 memcpy(ev->u.create2.name, orig.name, sizeof(orig.name));
 memcpy(ev->u.create2.phys, orig.phys, sizeof(orig.phys));
 memcpy(ev->u.create2.uniq, orig.uniq, sizeof(orig.uniq));
 ev->u.create2.rd_size = orig.rd_size;
 ev->u.create2.bus = orig.bus;
 ev->u.create2.vendor = orig.vendor;
 ev->u.create2.product = orig.product;
 ev->u.create2.version = orig.version;
 ev->u.create2.country = orig.country;

 return uhid_dev_create2(uhid, ev);
}
