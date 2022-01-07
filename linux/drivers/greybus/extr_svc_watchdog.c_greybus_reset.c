
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int UMH_WAIT_EXEC ;
 int call_usermodehelper (char const* const,char**,char**,int ) ;
 int pr_err (char*,char*,char*) ;

__attribute__((used)) static void greybus_reset(struct work_struct *work)
{
 static char const start_path[] = "/system/bin/start";
 static char *envp[] = {
  "HOME=/",
  "PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin",
  ((void*)0),
 };
 static char *argv[] = {
  (char *)start_path,
  "unipro_reset",
  ((void*)0),
 };

 pr_err("svc_watchdog: calling \"%s %s\" to reset greybus network!\n",
        argv[0], argv[1]);
 call_usermodehelper(start_path, argv, envp, UMH_WAIT_EXEC);
}
