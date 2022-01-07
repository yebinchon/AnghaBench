
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 scalar_t__ dm_copy_name_and_uuid (struct mapped_device*,char*,int *) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t dm_attr_name_show(struct mapped_device *md, char *buf)
{
 if (dm_copy_name_and_uuid(md, buf, ((void*)0)))
  return -EIO;

 strcat(buf, "\n");
 return strlen(buf);
}
