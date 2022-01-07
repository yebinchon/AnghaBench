
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct cmd_info {int flag; int len; } ;


 int F_LEN_CONST ;
 int F_LEN_MASK ;

__attribute__((used)) static inline int get_cmd_length(const struct cmd_info *info, u32 cmd)
{
 if ((info->flag & F_LEN_MASK) == F_LEN_CONST)
  return info->len;
 else
  return (cmd & ((1U << info->len) - 1)) + 2;
 return 0;
}
