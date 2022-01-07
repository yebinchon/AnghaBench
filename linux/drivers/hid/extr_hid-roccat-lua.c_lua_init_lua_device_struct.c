
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct lua_device {int lua_lock; } ;


 int mutex_init (int *) ;

__attribute__((used)) static int lua_init_lua_device_struct(struct usb_device *usb_dev,
  struct lua_device *lua)
{
 mutex_init(&lua->lua_lock);

 return 0;
}
