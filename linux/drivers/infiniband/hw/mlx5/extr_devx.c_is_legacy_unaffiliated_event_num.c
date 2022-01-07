
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;




__attribute__((used)) static bool is_legacy_unaffiliated_event_num(u16 event_num)
{
 switch (event_num) {
 case 128:
  return 1;
 default:
  return 0;
 }
}
