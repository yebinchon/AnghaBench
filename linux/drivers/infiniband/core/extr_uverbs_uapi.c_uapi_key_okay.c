
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WARN (int,char*,unsigned int,int ) ;
 scalar_t__ uapi_key_is_attr (int ) ;
 scalar_t__ uapi_key_is_ioctl_method (int ) ;
 scalar_t__ uapi_key_is_object (int ) ;
 scalar_t__ uapi_key_is_write_ex_method (int ) ;
 scalar_t__ uapi_key_is_write_method (int ) ;

__attribute__((used)) static void uapi_key_okay(u32 key)
{
 unsigned int count = 0;

 if (uapi_key_is_object(key))
  count++;
 if (uapi_key_is_ioctl_method(key))
  count++;
 if (uapi_key_is_write_method(key))
  count++;
 if (uapi_key_is_write_ex_method(key))
  count++;
 if (uapi_key_is_attr(key))
  count++;
 WARN(count != 1, "Bad count %d key=%x", count, key);
}
