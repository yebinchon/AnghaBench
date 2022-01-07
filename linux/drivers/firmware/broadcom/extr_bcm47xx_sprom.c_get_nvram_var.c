
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;


 int ENOENT ;
 int bcm47xx_nvram_getenv (char*,char*,int) ;
 int create_key (char const*,char const*,char const*,char*,int) ;

__attribute__((used)) static int get_nvram_var(const char *prefix, const char *postfix,
    const char *name, char *buf, int len, bool fallback)
{
 char key[40];
 int err;

 create_key(prefix, postfix, name, key, sizeof(key));

 err = bcm47xx_nvram_getenv(key, buf, len);
 if (fallback && err == -ENOENT && prefix) {
  create_key(((void*)0), postfix, name, key, sizeof(key));
  err = bcm47xx_nvram_getenv(key, buf, len);
 }
 return err;
}
