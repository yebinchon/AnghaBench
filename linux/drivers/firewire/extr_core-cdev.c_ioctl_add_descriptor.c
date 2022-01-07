
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fw_cdev_add_descriptor {int length; int handle; int key; int immediate; int data; } ;
union ioctl_arg {struct fw_cdev_add_descriptor add_descriptor; } ;
struct TYPE_7__ {int handle; int release; } ;
struct TYPE_6__ {int length; int data; int key; int immediate; } ;
struct descriptor_resource {TYPE_4__ resource; TYPE_2__ descriptor; int data; } ;
struct client {TYPE_1__* device; } ;
struct TYPE_5__ {int is_local; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int add_client_resource (struct client*,TYPE_4__*,int ) ;
 scalar_t__ copy_from_user (int ,int ,int) ;
 int fw_core_add_descriptor (TYPE_2__*) ;
 int fw_core_remove_descriptor (TYPE_2__*) ;
 int kfree (struct descriptor_resource*) ;
 struct descriptor_resource* kmalloc (int,int ) ;
 int release_descriptor ;
 int u64_to_uptr (int ) ;

__attribute__((used)) static int ioctl_add_descriptor(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_add_descriptor *a = &arg->add_descriptor;
 struct descriptor_resource *r;
 int ret;


 if (!client->device->is_local)
  return -ENOSYS;

 if (a->length > 256)
  return -EINVAL;

 r = kmalloc(sizeof(*r) + a->length * 4, GFP_KERNEL);
 if (r == ((void*)0))
  return -ENOMEM;

 if (copy_from_user(r->data, u64_to_uptr(a->data), a->length * 4)) {
  ret = -EFAULT;
  goto failed;
 }

 r->descriptor.length = a->length;
 r->descriptor.immediate = a->immediate;
 r->descriptor.key = a->key;
 r->descriptor.data = r->data;

 ret = fw_core_add_descriptor(&r->descriptor);
 if (ret < 0)
  goto failed;

 r->resource.release = release_descriptor;
 ret = add_client_resource(client, &r->resource, GFP_KERNEL);
 if (ret < 0) {
  fw_core_remove_descriptor(&r->descriptor);
  goto failed;
 }
 a->handle = r->resource.handle;

 return 0;
 failed:
 kfree(r);

 return ret;
}
