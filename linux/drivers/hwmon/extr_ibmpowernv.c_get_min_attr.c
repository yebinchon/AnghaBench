
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sensors { ____Placeholder_sensors } sensors ;




__attribute__((used)) static char *get_min_attr(enum sensors type)
{
 switch (type) {
 case 128:
  return "input_lowest";
 default:
  return "lowest";
 }
}
