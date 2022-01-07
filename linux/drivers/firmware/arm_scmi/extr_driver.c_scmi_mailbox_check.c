
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_parse_phandle_with_args (struct device_node*,char*,char*,int,int *) ;

__attribute__((used)) static int scmi_mailbox_check(struct device_node *np, int idx)
{
 return of_parse_phandle_with_args(np, "mboxes", "#mbox-cells",
       idx, ((void*)0));
}
