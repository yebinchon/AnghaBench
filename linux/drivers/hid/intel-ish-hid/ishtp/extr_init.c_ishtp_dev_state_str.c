
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ishtp_dev_state_str(int state)
{
 switch (state) {
 case 132:
  return "INITIALIZING";
 case 131:
  return "INIT_CLIENTS";
 case 133:
  return "ENABLED";
 case 128:
  return "RESETTING";
 case 134:
  return "DISABLED";
 case 130:
  return "POWER_DOWN";
 case 129:
  return "POWER_UP";
 default:
  return "unknown";
 }
}
