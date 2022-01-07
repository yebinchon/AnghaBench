
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {int state; } ;
__attribute__((used)) static char *cyapa_state_to_string(struct cyapa *cyapa)
{
 switch (cyapa->state) {
 case 134:
  return "bootloader busy";
 case 133:
  return "bootloader idle";
 case 135:
  return "bootloader active";
 case 131:
 case 129:
  return "bootloader";
 case 128:
 case 132:
 case 130:
  return "operational";
 default:
  return "invalid mode";
 }
}
