
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int firmware_kobj ;
 int memconsole_bin_attr ;
 int sysfs_create_bin_file (int ,int *) ;

int memconsole_sysfs_init(void)
{
 return sysfs_create_bin_file(firmware_kobj, &memconsole_bin_attr);
}
