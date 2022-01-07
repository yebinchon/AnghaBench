
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;





 int EINVAL ;
 int edac_report ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int edac_report_get(char *buffer, const struct kernel_param *kp)
{
 int ret = 0;

 switch (edac_report) {
 case 129:
  ret = sprintf(buffer, "on");
  break;
 case 130:
  ret = sprintf(buffer, "off");
  break;
 case 128:
  ret = sprintf(buffer, "force");
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
