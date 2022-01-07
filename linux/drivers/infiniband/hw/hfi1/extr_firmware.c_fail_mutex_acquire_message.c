
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int dd_dev_err (struct hfi1_devdata*,char*,char const*) ;

__attribute__((used)) static void fail_mutex_acquire_message(struct hfi1_devdata *dd,
           const char *func)
{
 dd_dev_err(dd,
     "%s: hardware mutex stuck - suggest rebooting the machine\n",
     func);
}
