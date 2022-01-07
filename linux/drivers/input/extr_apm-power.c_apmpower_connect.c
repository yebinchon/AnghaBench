
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handler {int dummy; } ;
struct input_handle {char* name; struct input_handler* handler; struct input_dev* dev; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int input_open_device (struct input_handle*) ;
 int input_register_handle (struct input_handle*) ;
 int input_unregister_handle (struct input_handle*) ;
 int kfree (struct input_handle*) ;
 struct input_handle* kzalloc (int,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int apmpower_connect(struct input_handler *handler,
       struct input_dev *dev,
       const struct input_device_id *id)
{
 struct input_handle *handle;
 int error;

 handle = kzalloc(sizeof(struct input_handle), GFP_KERNEL);
 if (!handle)
  return -ENOMEM;

 handle->dev = dev;
 handle->handler = handler;
 handle->name = "apm-power";

 error = input_register_handle(handle);
 if (error) {
  pr_err("Failed to register input power handler, error %d\n",
         error);
  kfree(handle);
  return error;
 }

 error = input_open_device(handle);
 if (error) {
  pr_err("Failed to open input power device, error %d\n", error);
  input_unregister_handle(handle);
  kfree(handle);
  return error;
 }

 return 0;
}
