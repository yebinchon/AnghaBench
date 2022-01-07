
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_registry_entry_t {int type; } ;
typedef enum sms_device_type_st { ____Placeholder_sms_device_type_st } sms_device_type_st ;


 int EINVAL ;
 int pr_err (char*) ;
 struct smscore_registry_entry_t* smscore_find_registry (char*) ;

__attribute__((used)) static enum sms_device_type_st smscore_registry_gettype(char *devpath)
{
 struct smscore_registry_entry_t *entry;

 entry = smscore_find_registry(devpath);
 if (entry)
  return entry->type;
 else
  pr_err("No registry found.\n");

 return -EINVAL;
}
