
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_kbd {int dummy; } ;
struct platform_device {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline int spear_kbd_parse_dt(struct platform_device *pdev,
         struct spear_kbd *kbd)
{
 return -ENOSYS;
}
