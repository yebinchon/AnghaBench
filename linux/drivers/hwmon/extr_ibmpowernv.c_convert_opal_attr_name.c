
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sensors { ____Placeholder_sensors } sensors ;


 int DT_DATA_ATTR_SUFFIX ;
 int DT_FAULT_ATTR_SUFFIX ;
 int DT_THRESHOLD_ATTR_SUFFIX ;
 int FAN ;
 int TEMP ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static const char *convert_opal_attr_name(enum sensors type,
       const char *opal_attr)
{
 const char *attr_name = ((void*)0);

 if (!strcmp(opal_attr, DT_FAULT_ATTR_SUFFIX)) {
  attr_name = "fault";
 } else if (!strcmp(opal_attr, DT_DATA_ATTR_SUFFIX)) {
  attr_name = "input";
 } else if (!strcmp(opal_attr, DT_THRESHOLD_ATTR_SUFFIX)) {
  if (type == TEMP)
   attr_name = "max";
  else if (type == FAN)
   attr_name = "min";
 }

 return attr_name;
}
