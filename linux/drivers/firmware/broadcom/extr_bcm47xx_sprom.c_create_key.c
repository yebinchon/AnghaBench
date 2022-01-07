
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static void create_key(const char *prefix, const char *postfix,
         const char *name, char *buf, int len)
{
 if (prefix && postfix)
  snprintf(buf, len, "%s%s%s", prefix, name, postfix);
 else if (prefix)
  snprintf(buf, len, "%s%s", prefix, name);
 else if (postfix)
  snprintf(buf, len, "%s%s", name, postfix);
 else
  snprintf(buf, len, "%s", name);
}
