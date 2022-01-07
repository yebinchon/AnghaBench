
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_report {int dummy; } ;
struct hidpp_device {int dummy; } ;


 int CMD_TOUCHPAD_SET_RAW_REPORT_STATE ;
 int hidpp_send_fap_command_sync (struct hidpp_device*,int,int ,int*,int,struct hidpp_report*) ;

__attribute__((used)) static int hidpp_touchpad_set_raw_report_state(struct hidpp_device *hidpp_dev,
  u8 feature_index, bool send_raw_reports,
  bool sensor_enhanced_settings)
{
 struct hidpp_report response;
 u8 params = send_raw_reports | (sensor_enhanced_settings << 2);

 return hidpp_send_fap_command_sync(hidpp_dev, feature_index,
  CMD_TOUCHPAD_SET_RAW_REPORT_STATE, &params, 1, &response);
}
