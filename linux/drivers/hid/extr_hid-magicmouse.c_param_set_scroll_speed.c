
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 unsigned long scroll_speed ;

__attribute__((used)) static int param_set_scroll_speed(const char *val,
      const struct kernel_param *kp) {
 unsigned long speed;
 if (!val || kstrtoul(val, 0, &speed) || speed > 63)
  return -EINVAL;
 scroll_speed = speed;
 return 0;
}
