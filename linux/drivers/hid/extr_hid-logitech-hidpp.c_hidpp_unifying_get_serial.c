
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int * params; } ;
struct hidpp_report {TYPE_1__ rap; } ;
struct hidpp_device {int dummy; } ;


 int HIDPP_EXTENDED_PAIRING ;
 int HIDPP_GET_LONG_REGISTER ;
 int HIDPP_REG_PAIRING_INFORMATION ;
 int REPORT_ID_HIDPP_SHORT ;
 int hidpp_send_rap_command_sync (struct hidpp_device*,int ,int ,int ,int *,int,struct hidpp_report*) ;

__attribute__((used)) static int hidpp_unifying_get_serial(struct hidpp_device *hidpp, u32 *serial)
{
 struct hidpp_report response;
 int ret;
 u8 params[1] = { HIDPP_EXTENDED_PAIRING };

 ret = hidpp_send_rap_command_sync(hidpp,
     REPORT_ID_HIDPP_SHORT,
     HIDPP_GET_LONG_REGISTER,
     HIDPP_REG_PAIRING_INFORMATION,
     params, 1, &response);
 if (ret)
  return ret;





 *serial = *((u32 *)&response.rap.params[1]);
 return 0;
}
