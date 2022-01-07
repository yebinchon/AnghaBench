
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* params; } ;
struct hidpp_report {TYPE_1__ rap; } ;
struct hidpp_device {int dummy; } ;


 int GFP_KERNEL ;
 int HIDPP_DEVICE_NAME ;
 int HIDPP_GET_LONG_REGISTER ;
 int HIDPP_REG_PAIRING_INFORMATION ;
 int REPORT_ID_HIDPP_SHORT ;
 int hidpp_prefix_name (char**,int) ;
 int hidpp_send_rap_command_sync (struct hidpp_device*,int ,int ,int ,int *,int,struct hidpp_report*) ;
 char* kzalloc (int,int ) ;
 int memcpy (char*,int*,int) ;

__attribute__((used)) static char *hidpp_unifying_get_name(struct hidpp_device *hidpp_dev)
{
 struct hidpp_report response;
 int ret;
 u8 params[1] = { HIDPP_DEVICE_NAME };
 char *name;
 int len;

 ret = hidpp_send_rap_command_sync(hidpp_dev,
     REPORT_ID_HIDPP_SHORT,
     HIDPP_GET_LONG_REGISTER,
     HIDPP_REG_PAIRING_INFORMATION,
     params, 1, &response);
 if (ret)
  return ((void*)0);

 len = response.rap.params[1];

 if (2 + len > sizeof(response.rap.params))
  return ((void*)0);

 if (len < 4)
  return ((void*)0);

 name = kzalloc(len + 1, GFP_KERNEL);
 if (!name)
  return ((void*)0);

 memcpy(name, &response.rap.params[2], len);


 hidpp_prefix_name(&name, len + 1);

 return name;
}
