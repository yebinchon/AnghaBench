
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_device {int dummy; } ;


 int GFP_KERNEL ;
 int HIDPP_PAGE_GET_DEVICE_NAME_TYPE ;
 int hidpp_devicenametype_get_count (struct hidpp_device*,int,int*) ;
 int hidpp_devicenametype_get_device_name (struct hidpp_device*,int,unsigned int,char*,int) ;
 int hidpp_prefix_name (char**,int) ;
 int hidpp_root_get_feature (struct hidpp_device*,int ,int*,int*) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;

__attribute__((used)) static char *hidpp_get_device_name(struct hidpp_device *hidpp)
{
 u8 feature_type;
 u8 feature_index;
 u8 __name_length;
 char *name;
 unsigned index = 0;
 int ret;

 ret = hidpp_root_get_feature(hidpp, HIDPP_PAGE_GET_DEVICE_NAME_TYPE,
  &feature_index, &feature_type);
 if (ret)
  return ((void*)0);

 ret = hidpp_devicenametype_get_count(hidpp, feature_index,
  &__name_length);
 if (ret)
  return ((void*)0);

 name = kzalloc(__name_length + 1, GFP_KERNEL);
 if (!name)
  return ((void*)0);

 while (index < __name_length) {
  ret = hidpp_devicenametype_get_device_name(hidpp,
   feature_index, index, name + index,
   __name_length - index);
  if (ret <= 0) {
   kfree(name);
   return ((void*)0);
  }
  index += ret;
 }


 hidpp_prefix_name(&name, __name_length + 1);

 return name;
}
