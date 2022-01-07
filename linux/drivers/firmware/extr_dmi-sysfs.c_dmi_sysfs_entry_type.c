
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct dmi_sysfs_entry {TYPE_1__ dh; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t dmi_sysfs_entry_type(struct dmi_sysfs_entry *entry, char *buf)
{
 return sprintf(buf, "%d\n", entry->dh.type);
}
