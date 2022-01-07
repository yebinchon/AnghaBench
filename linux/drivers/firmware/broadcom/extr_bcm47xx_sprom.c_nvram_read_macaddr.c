
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;


 int get_nvram_var (char const*,int *,char const*,char*,int,int) ;
 int mac_pton (char*,int *) ;
 int pr_warn (char*,char*) ;
 int strreplace (char*,char,char) ;

__attribute__((used)) static void nvram_read_macaddr(const char *prefix, const char *name,
          u8 val[6], bool fallback)
{
 char buf[100];
 int err;

 err = get_nvram_var(prefix, ((void*)0), name, buf, sizeof(buf), fallback);
 if (err < 0)
  return;

 strreplace(buf, '-', ':');
 if (!mac_pton(buf, val))
  pr_warn("Can not parse mac address: %s\n", buf);
}
