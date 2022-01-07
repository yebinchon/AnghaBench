
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** severity_strs ;

const char *cper_severity_str(unsigned int severity)
{
 return severity < ARRAY_SIZE(severity_strs) ?
  severity_strs[severity] : "unknown";
}
