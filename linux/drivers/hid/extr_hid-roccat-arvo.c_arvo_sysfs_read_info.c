
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
struct arvo_info {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int ARVO_COMMAND_INFO ;
 int arvo_sysfs_read (struct file*,struct kobject*,char*,int ,size_t,int,int ) ;

__attribute__((used)) static ssize_t arvo_sysfs_read_info(struct file *fp,
  struct kobject *kobj, struct bin_attribute *attr, char *buf,
  loff_t off, size_t count)
{
 return arvo_sysfs_read(fp, kobj, buf, off, count,
   sizeof(struct arvo_info), ARVO_COMMAND_INFO);
}
