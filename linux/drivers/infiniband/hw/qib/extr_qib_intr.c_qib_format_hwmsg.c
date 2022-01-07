
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcat (char*,char const*,size_t) ;

__attribute__((used)) static void qib_format_hwmsg(char *msg, size_t msgl, const char *hwmsg)
{
 strlcat(msg, "[", msgl);
 strlcat(msg, hwmsg, msgl);
 strlcat(msg, "]", msgl);
}
