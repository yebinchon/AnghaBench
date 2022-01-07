
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int get_nvram_var (char const*,int *,char const*,char*,int,int) ;
 int memcpy (char*,char*,int) ;
 int pr_warn (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void nvram_read_alpha2(const char *prefix, const char *name,
        char val[2], bool fallback)
{
 char buf[10];
 int err;

 err = get_nvram_var(prefix, ((void*)0), name, buf, sizeof(buf), fallback);
 if (err < 0)
  return;
 if (buf[0] == '0')
  return;
 if (strlen(buf) > 2) {
  pr_warn("alpha2 is too long %s\n", buf);
  return;
 }
 memcpy(val, buf, 2);
}
