
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int iwpm_validate_nlmsg_attr(struct nlattr *nltb[],
        int nla_count)
{
 int i;
 for (i = 1; i < nla_count; i++) {
  if (!nltb[i])
   return -EINVAL;
 }
 return 0;
}
