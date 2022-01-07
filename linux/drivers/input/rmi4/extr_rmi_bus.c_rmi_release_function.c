
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct rmi_function*) ;
 struct rmi_function* to_rmi_function (struct device*) ;

__attribute__((used)) static void rmi_release_function(struct device *dev)
{
 struct rmi_function *fn = to_rmi_function(dev);

 kfree(fn);
}
