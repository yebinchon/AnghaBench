
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct device_id {int enum_id; void* device_type; int member_0; } ;
 int BREAK_TO_DEBUGGER () ;
 void* DEVICE_TYPE_CRT ;
 void* DEVICE_TYPE_DFP ;
 void* DEVICE_TYPE_LCD ;
 void* DEVICE_TYPE_UNKNOWN ;

__attribute__((used)) static struct device_id device_type_from_device_id(uint16_t device_id)
{

 struct device_id result_device_id = {0};

 switch (device_id) {
 case 129:
  result_device_id.device_type = DEVICE_TYPE_LCD;
  result_device_id.enum_id = 1;
  break;

 case 128:
  result_device_id.device_type = DEVICE_TYPE_LCD;
  result_device_id.enum_id = 2;
  break;

 case 137:
  result_device_id.device_type = DEVICE_TYPE_CRT;
  result_device_id.enum_id = 1;
  break;

 case 136:
  result_device_id.device_type = DEVICE_TYPE_CRT;
  result_device_id.enum_id = 2;
  break;

 case 135:
  result_device_id.device_type = DEVICE_TYPE_DFP;
  result_device_id.enum_id = 1;
  break;

 case 134:
  result_device_id.device_type = DEVICE_TYPE_DFP;
  result_device_id.enum_id = 2;
  break;

 case 133:
  result_device_id.device_type = DEVICE_TYPE_DFP;
  result_device_id.enum_id = 3;
  break;

 case 132:
  result_device_id.device_type = DEVICE_TYPE_DFP;
  result_device_id.enum_id = 4;
  break;

 case 131:
  result_device_id.device_type = DEVICE_TYPE_DFP;
  result_device_id.enum_id = 5;
  break;

 case 130:
  result_device_id.device_type = DEVICE_TYPE_DFP;
  result_device_id.enum_id = 6;
  break;

 default:
  BREAK_TO_DEBUGGER();
  result_device_id.device_type = DEVICE_TYPE_UNKNOWN;
  result_device_id.enum_id = 0;
 }
 return result_device_id;
}
