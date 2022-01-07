
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int printk (char*,char const*,char*,char*) ;

__attribute__((used)) static inline void print_bool(char *str, const char *pfx, u64 check, u64 bit)
{
 printk("%s%s: %s\n", pfx, str, (check & bit) ? "true" : "false");
}
