
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static int srp_tmo_get(char *buffer, const struct kernel_param *kp)
{
 int tmo = *(int *)kp->arg;

 if (tmo >= 0)
  return sprintf(buffer, "%d", tmo);
 else
  return sprintf(buffer, "off");
}
