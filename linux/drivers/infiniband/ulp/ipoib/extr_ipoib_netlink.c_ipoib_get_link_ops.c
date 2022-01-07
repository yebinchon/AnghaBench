
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int dummy; } ;


 struct rtnl_link_ops ipoib_link_ops ;

struct rtnl_link_ops *ipoib_get_link_ops(void)
{
 return &ipoib_link_ops;
}
