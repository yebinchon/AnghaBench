
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int params; void* funcindex_clientid; void* feature_index; } ;
struct hidpp_report {TYPE_1__ fap; int report_id; } ;
struct hidpp_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIDPP_REPORT_LONG_LENGTH ;
 int REPORT_ID_HIDPP_LONG ;
 int REPORT_ID_HIDPP_VERY_LONG ;
 int hidpp_send_message_sync (struct hidpp_device*,struct hidpp_report*,struct hidpp_report*) ;
 int kfree (struct hidpp_report*) ;
 struct hidpp_report* kzalloc (int,int ) ;
 int memcpy (int *,void**,int) ;

__attribute__((used)) static int hidpp_send_fap_command_sync(struct hidpp_device *hidpp,
 u8 feat_index, u8 funcindex_clientid, u8 *params, int param_count,
 struct hidpp_report *response)
{
 struct hidpp_report *message;
 int ret;

 if (param_count > sizeof(message->fap.params))
  return -EINVAL;

 message = kzalloc(sizeof(struct hidpp_report), GFP_KERNEL);
 if (!message)
  return -ENOMEM;

 if (param_count > (HIDPP_REPORT_LONG_LENGTH - 4))
  message->report_id = REPORT_ID_HIDPP_VERY_LONG;
 else
  message->report_id = REPORT_ID_HIDPP_LONG;
 message->fap.feature_index = feat_index;
 message->fap.funcindex_clientid = funcindex_clientid;
 memcpy(&message->fap.params, params, param_count);

 ret = hidpp_send_message_sync(hidpp, message, response);
 kfree(message);
 return ret;
}
