
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int fw_cfg_rev ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fw_cfg_showrev(struct kobject *k, struct attribute *a, char *buf)
{
 return sprintf(buf, "%u\n", fw_cfg_rev);
}
