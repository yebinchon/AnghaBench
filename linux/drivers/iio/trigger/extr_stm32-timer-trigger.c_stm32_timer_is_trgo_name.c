
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strstr (char const*,char*) ;

__attribute__((used)) static bool stm32_timer_is_trgo_name(const char *name)
{
 return (!!strstr(name, "trgo") && !strstr(name, "trgo2"));
}
