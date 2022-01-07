
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int fail_last_dev; } ;
typedef int ssize_t ;


 int kstrtobool (char const*,int*) ;

__attribute__((used)) static ssize_t
fail_last_dev_store(struct mddev *mddev, const char *buf, size_t len)
{
 int ret;
 bool value;

 ret = kstrtobool(buf, &value);
 if (ret)
  return ret;

 if (value != mddev->fail_last_dev)
  mddev->fail_last_dev = value;

 return len;
}
