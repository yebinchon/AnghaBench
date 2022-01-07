
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum guc_log_buffer_type { ____Placeholder_guc_log_buffer_type } guc_log_buffer_type ;





 int MISSING_CASE (int) ;

__attribute__((used)) static const char *
stringify_guc_log_type(enum guc_log_buffer_type type)
{
 switch (type) {
 case 128:
  return "ISR";
 case 129:
  return "DPC";
 case 130:
  return "CRASH";
 default:
  MISSING_CASE(type);
 }

 return "";
}
