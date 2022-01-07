
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int DISK_NAME_LEN ;
 int E2BIG ;
 int EINVAL ;
 int MD_MAJOR ;
 unsigned long MINORMASK ;
 int MKDEV (int ,unsigned long) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ kstrtoul (char*,int,unsigned long*) ;
 int md_alloc (int ,char*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int add_named_array(const char *val, const struct kernel_param *kp)
{







 int len = strlen(val);
 char buf[DISK_NAME_LEN];
 unsigned long devnum;

 while (len && val[len-1] == '\n')
  len--;
 if (len >= DISK_NAME_LEN)
  return -E2BIG;
 strlcpy(buf, val, len+1);
 if (strncmp(buf, "md_", 3) == 0)
  return md_alloc(0, buf);
 if (strncmp(buf, "md", 2) == 0 &&
     isdigit(buf[2]) &&
     kstrtoul(buf+2, 10, &devnum) == 0 &&
     devnum <= MINORMASK)
  return md_alloc(MKDEV(MD_MAJOR, devnum), ((void*)0));

 return -EINVAL;
}
