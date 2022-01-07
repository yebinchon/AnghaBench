
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int ib_uverbs_notsupp(struct uverbs_attr_bundle *attrs)
{
 return -EOPNOTSUPP;
}
