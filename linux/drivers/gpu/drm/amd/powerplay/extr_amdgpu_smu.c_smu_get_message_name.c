
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
typedef enum smu_message_type { ____Placeholder_smu_message_type } smu_message_type ;


 int SMU_MSG_MAX_COUNT ;
 char const** __smu_message_names ;

const char *smu_get_message_name(struct smu_context *smu, enum smu_message_type type)
{
 if (type < 0 || type >= SMU_MSG_MAX_COUNT)
  return "unknown smu message";
 return __smu_message_names[type];
}
