
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_cont (char*,char const*) ;
 int pr_info (char*,char const*) ;

__attribute__((used)) static inline void write_to_printk(void *ctx, const char *str, size_t len,
       bool cont)
{
 if (cont)
  pr_cont("%s", str);
 else
  pr_info("%s", str);
}
