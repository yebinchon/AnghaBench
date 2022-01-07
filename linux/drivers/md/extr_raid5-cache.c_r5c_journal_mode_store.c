
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int mddev_lock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 int r5c_journal_mode_set (struct mddev*,int) ;
 int * r5c_journal_mode_str ;
 size_t strlen (int ) ;
 int strncmp (char const*,int ,size_t) ;

__attribute__((used)) static ssize_t r5c_journal_mode_store(struct mddev *mddev,
          const char *page, size_t length)
{
 int mode = ARRAY_SIZE(r5c_journal_mode_str);
 size_t len = length;
 int ret;

 if (len < 2)
  return -EINVAL;

 if (page[len - 1] == '\n')
  len--;

 while (mode--)
  if (strlen(r5c_journal_mode_str[mode]) == len &&
      !strncmp(page, r5c_journal_mode_str[mode], len))
   break;
 ret = mddev_lock(mddev);
 if (ret)
  return ret;
 ret = r5c_journal_mode_set(mddev, mode);
 mddev_unlock(mddev);
 return ret ?: length;
}
