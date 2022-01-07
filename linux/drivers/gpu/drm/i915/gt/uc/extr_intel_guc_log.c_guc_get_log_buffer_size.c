
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum guc_log_buffer_type { ____Placeholder_guc_log_buffer_type } guc_log_buffer_type ;


 unsigned int CRASH_BUFFER_SIZE ;
 unsigned int DPC_BUFFER_SIZE ;



 unsigned int ISR_BUFFER_SIZE ;
 int MISSING_CASE (int) ;

__attribute__((used)) static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
{
 switch (type) {
 case 128:
  return ISR_BUFFER_SIZE;
 case 129:
  return DPC_BUFFER_SIZE;
 case 130:
  return CRASH_BUFFER_SIZE;
 default:
  MISSING_CASE(type);
 }

 return 0;
}
