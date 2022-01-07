
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EDAC_REPORTING_DISABLED ;
 int EDAC_REPORTING_ENABLED ;
 int EDAC_REPORTING_FORCE ;
 int EINVAL ;
 int edac_report ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int edac_report_set(const char *str, const struct kernel_param *kp)
{
 if (!str)
  return -EINVAL;

 if (!strncmp(str, "on", 2))
  edac_report = EDAC_REPORTING_ENABLED;
 else if (!strncmp(str, "off", 3))
  edac_report = EDAC_REPORTING_DISABLED;
 else if (!strncmp(str, "force", 5))
  edac_report = EDAC_REPORTING_FORCE;

 return 0;
}
