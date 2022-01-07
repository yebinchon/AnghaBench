
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acx565akm_panel {int mutex; int has_cabc; } ;
typedef size_t ssize_t ;


 unsigned int ARRAY_SIZE (char**) ;
 size_t EINVAL ;
 char** acx565akm_cabc_modes ;
 int acx565akm_set_cabc_mode (struct acx565akm_panel*,unsigned int) ;
 struct acx565akm_panel* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static ssize_t cabc_mode_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct acx565akm_panel *lcd = dev_get_drvdata(dev);
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(acx565akm_cabc_modes); i++) {
  const char *mode_str = acx565akm_cabc_modes[i];
  int cmp_len = strlen(mode_str);

  if (count > 0 && buf[count - 1] == '\n')
   count--;
  if (count != cmp_len)
   continue;

  if (strncmp(buf, mode_str, cmp_len) == 0)
   break;
 }

 if (i == ARRAY_SIZE(acx565akm_cabc_modes))
  return -EINVAL;

 if (!lcd->has_cabc && i != 0)
  return -EINVAL;

 mutex_lock(&lcd->mutex);
 acx565akm_set_cabc_mode(lcd, i);
 mutex_unlock(&lcd->mutex);

 return count;
}
