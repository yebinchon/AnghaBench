
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int params; } ;
struct hidpp_report {TYPE_1__ rap; } ;
struct hidpp_device {int dummy; } ;


 int HIDPP_GET_REGISTER ;
 int HIDPP_SET_REGISTER ;
 int REPORT_ID_HIDPP_SHORT ;
 int hidpp_send_rap_command_sync (struct hidpp_device*,int ,int ,size_t,size_t*,int,struct hidpp_report*) ;
 int memcpy (size_t*,int ,int) ;

__attribute__((used)) static int hidpp10_set_register(struct hidpp_device *hidpp_dev,
 u8 register_address, u8 byte, u8 mask, u8 value)
{
 struct hidpp_report response;
 int ret;
 u8 params[3] = { 0 };

 ret = hidpp_send_rap_command_sync(hidpp_dev,
       REPORT_ID_HIDPP_SHORT,
       HIDPP_GET_REGISTER,
       register_address,
       ((void*)0), 0, &response);
 if (ret)
  return ret;

 memcpy(params, response.rap.params, 3);

 params[byte] &= ~mask;
 params[byte] |= value & mask;

 return hidpp_send_rap_command_sync(hidpp_dev,
        REPORT_ID_HIDPP_SHORT,
        HIDPP_SET_REGISTER,
        register_address,
        params, 3, &response);
}
