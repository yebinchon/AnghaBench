
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stp_policy {TYPE_2__* stm; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {char* name; } ;


 int sprintf (char*,char*,char*) ;
 struct stp_policy* to_stp_policy (struct config_item*) ;

__attribute__((used)) static ssize_t stp_policy_device_show(struct config_item *item,
          char *page)
{
 struct stp_policy *policy = to_stp_policy(item);
 ssize_t count;

 count = sprintf(page, "%s\n",
   (policy && policy->stm) ?
   policy->stm->data->name :
   "<none>");

 return count;
}
