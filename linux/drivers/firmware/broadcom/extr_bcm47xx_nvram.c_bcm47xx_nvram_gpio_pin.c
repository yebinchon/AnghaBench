
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvram_var ;
typedef int buf ;


 int ENOENT ;
 int NVRAM_MAX_GPIO_ENTRIES ;
 int NVRAM_MAX_GPIO_VALUE_LEN ;
 int bcm47xx_nvram_getenv (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strcmp (char const*,char*) ;

int bcm47xx_nvram_gpio_pin(const char *name)
{
 int i, err;
 char nvram_var[] = "gpioXX";
 char buf[NVRAM_MAX_GPIO_VALUE_LEN];


 for (i = 0; i < NVRAM_MAX_GPIO_ENTRIES; i++) {
  err = snprintf(nvram_var, sizeof(nvram_var), "gpio%i", i);
  if (err <= 0)
   continue;
  err = bcm47xx_nvram_getenv(nvram_var, buf, sizeof(buf));
  if (err <= 0)
   continue;
  if (!strcmp(name, buf))
   return i;
 }
 return -ENOENT;
}
