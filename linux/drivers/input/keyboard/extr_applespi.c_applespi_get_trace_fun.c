
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum applespi_evt_type { ____Placeholder_applespi_evt_type } applespi_evt_type ;
typedef int applespi_trace_fun ;
 int WARN_ONCE (int,char*,int) ;
 int trace_applespi_backlight_cmd ;
 int trace_applespi_caps_lock_cmd ;
 int trace_applespi_keyboard_data ;
 int trace_applespi_touchpad_data ;
 int trace_applespi_tp_ini_cmd ;
 int trace_applespi_unknown_data ;

__attribute__((used)) static applespi_trace_fun applespi_get_trace_fun(enum applespi_evt_type type)
{
 switch (type) {
 case 131:
  return trace_applespi_tp_ini_cmd;
 case 133:
  return trace_applespi_backlight_cmd;
 case 132:
  return trace_applespi_caps_lock_cmd;
 case 130:
  return trace_applespi_keyboard_data;
 case 129:
  return trace_applespi_touchpad_data;
 case 128:
  return trace_applespi_unknown_data;
 default:
  WARN_ONCE(1, "Unknown msg type %d", type);
  return trace_applespi_unknown_data;
 }
}
