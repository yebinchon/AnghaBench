
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static bool is_legacy_obj_event_num(u16 event_num)
{
 switch (event_num) {
 case 137:
 case 142:
 case 135:
 case 133:
 case 132:
 case 140:
 case 130:
 case 136:
 case 129:
 case 131:
 case 134:
 case 139:
 case 141:
 case 138:
 case 128:
  return 1;
 default:
  return 0;
 }
}
