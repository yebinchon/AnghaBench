
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sub_id; int reg_address; int params; } ;
struct hidpp_report {int report_id; TYPE_1__ rap; } ;
struct hidpp_device {int very_long_report_length; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIDPP_REPORT_LONG_LENGTH ;
 int HIDPP_REPORT_SHORT_LENGTH ;



 int hidpp_send_message_sync (struct hidpp_device*,struct hidpp_report*,struct hidpp_report*) ;
 int kfree (struct hidpp_report*) ;
 struct hidpp_report* kzalloc (int,int ) ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static int hidpp_send_rap_command_sync(struct hidpp_device *hidpp_dev,
 u8 report_id, u8 sub_id, u8 reg_address, u8 *params, int param_count,
 struct hidpp_report *response)
{
 struct hidpp_report *message;
 int ret, max_count;

 switch (report_id) {
 case 129:
  max_count = HIDPP_REPORT_SHORT_LENGTH - 4;
  break;
 case 130:
  max_count = HIDPP_REPORT_LONG_LENGTH - 4;
  break;
 case 128:
  max_count = hidpp_dev->very_long_report_length - 4;
  break;
 default:
  return -EINVAL;
 }

 if (param_count > max_count)
  return -EINVAL;

 message = kzalloc(sizeof(struct hidpp_report), GFP_KERNEL);
 if (!message)
  return -ENOMEM;
 message->report_id = report_id;
 message->rap.sub_id = sub_id;
 message->rap.reg_address = reg_address;
 memcpy(&message->rap.params, params, param_count);

 ret = hidpp_send_message_sync(hidpp_dev, message, response);
 kfree(message);
 return ret;
}
