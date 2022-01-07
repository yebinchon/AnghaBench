
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int firmware_kobj ;
 int memconsole_bin_attr ;
 int sysfs_remove_bin_file (int ,int *) ;

void memconsole_exit(void)
{
 sysfs_remove_bin_file(firmware_kobj, &memconsole_bin_attr);
}
