
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int disk; } ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;
struct TYPE_2__ {int kobj; } ;


 char* DM_COOKIE_ENV_VAR_NAME ;
 int DM_COOKIE_LENGTH ;
 TYPE_1__* disk_to_dev (int ) ;
 int kobject_uevent (int *,int) ;
 int kobject_uevent_env (int *,int,char**) ;
 int snprintf (char*,int,char*,char*,unsigned int) ;

int dm_kobject_uevent(struct mapped_device *md, enum kobject_action action,
         unsigned cookie)
{
 char udev_cookie[DM_COOKIE_LENGTH];
 char *envp[] = { udev_cookie, ((void*)0) };

 if (!cookie)
  return kobject_uevent(&disk_to_dev(md->disk)->kobj, action);
 else {
  snprintf(udev_cookie, DM_COOKIE_LENGTH, "%s=%u",
    DM_COOKIE_ENV_VAR_NAME, cookie);
  return kobject_uevent_env(&disk_to_dev(md->disk)->kobj,
       action, envp);
 }
}
