
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t srpt_wwn_version_show(struct config_item *item, char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "\n");
}
