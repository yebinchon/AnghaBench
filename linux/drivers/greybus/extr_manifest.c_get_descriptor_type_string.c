
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







 int WARN_ON (int) ;

__attribute__((used)) static const char *get_descriptor_type_string(u8 type)
{
 switch (type) {
 case 129:
  return "invalid";
 case 128:
  return "string";
 case 130:
  return "interface";
 case 131:
  return "cport";
 case 132:
  return "bundle";
 default:
  WARN_ON(1);
  return "unknown";
 }
}
