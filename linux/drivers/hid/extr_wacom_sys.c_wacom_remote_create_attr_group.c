
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wacom_remote {TYPE_1__* remotes; int remote_dir; } ;
struct wacom {TYPE_2__* hdev; struct wacom_remote* remote; } ;
typedef int __u32 ;
struct TYPE_6__ {int * name; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {TYPE_3__ group; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __wacom_devm_sysfs_create_group (struct wacom*,int ,TYPE_3__*) ;
 int * devm_kasprintf (int *,int ,char*,int ) ;
 int hid_err (TYPE_2__*,char*,int) ;

__attribute__((used)) static int wacom_remote_create_attr_group(struct wacom *wacom, __u32 serial,
       int index)
{
 int error = 0;
 struct wacom_remote *remote = wacom->remote;

 remote->remotes[index].group.name = devm_kasprintf(&wacom->hdev->dev,
         GFP_KERNEL,
         "%d", serial);
 if (!remote->remotes[index].group.name)
  return -ENOMEM;

 error = __wacom_devm_sysfs_create_group(wacom, remote->remote_dir,
      &remote->remotes[index].group);
 if (error) {
  remote->remotes[index].group.name = ((void*)0);
  hid_err(wacom->hdev,
   "cannot create sysfs group err: %d\n", error);
  return error;
 }

 return 0;
}
