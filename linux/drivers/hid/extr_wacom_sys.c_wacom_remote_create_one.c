
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wacom_remote {TYPE_7__* remotes; } ;
struct TYPE_13__ {int pad_name; } ;
struct wacom {TYPE_4__ wacom_wac; TYPE_1__* hdev; struct wacom_remote* remote; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_14__ {scalar_t__ serial; int registered; TYPE_3__* input; TYPE_2__ group; } ;
struct TYPE_12__ {int dev; int name; int uniq; } ;
struct TYPE_10__ {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WACOM_MAX_REMOTES ;
 int devres_close_group (struct device*,TYPE_7__*) ;
 int devres_open_group (struct device*,TYPE_7__*,int ) ;
 int devres_release_group (struct device*,TYPE_7__*) ;
 int input_register_device (TYPE_3__*) ;
 TYPE_3__* wacom_allocate_input (struct wacom*) ;
 int wacom_led_groups_alloc_and_register_one (int *,struct wacom*,unsigned int,int,int) ;
 int wacom_remote_create_attr_group (struct wacom*,scalar_t__,unsigned int) ;
 int wacom_setup_pad_input_capabilities (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static int wacom_remote_create_one(struct wacom *wacom, u32 serial,
       unsigned int index)
{
 struct wacom_remote *remote = wacom->remote;
 struct device *dev = &wacom->hdev->dev;
 int error, k;




 for (k = 0; k < WACOM_MAX_REMOTES; k++) {
  if (remote->remotes[k].serial == serial)
   break;
 }

 if (k < WACOM_MAX_REMOTES) {
  remote->remotes[index].serial = serial;
  return 0;
 }

 if (!devres_open_group(dev, &remote->remotes[index], GFP_KERNEL))
  return -ENOMEM;

 error = wacom_remote_create_attr_group(wacom, serial, index);
 if (error)
  goto fail;

 remote->remotes[index].input = wacom_allocate_input(wacom);
 if (!remote->remotes[index].input) {
  error = -ENOMEM;
  goto fail;
 }
 remote->remotes[index].input->uniq = remote->remotes[index].group.name;
 remote->remotes[index].input->name = wacom->wacom_wac.pad_name;

 if (!remote->remotes[index].input->name) {
  error = -EINVAL;
  goto fail;
 }

 error = wacom_setup_pad_input_capabilities(remote->remotes[index].input,
         &wacom->wacom_wac);
 if (error)
  goto fail;

 remote->remotes[index].serial = serial;

 error = input_register_device(remote->remotes[index].input);
 if (error)
  goto fail;

 error = wacom_led_groups_alloc_and_register_one(
     &remote->remotes[index].input->dev,
     wacom, index, 3, 1);
 if (error)
  goto fail;

 remote->remotes[index].registered = 1;

 devres_close_group(dev, &remote->remotes[index]);
 return 0;

fail:
 devres_release_group(dev, &remote->remotes[index]);
 remote->remotes[index].serial = 0;
 return error;
}
