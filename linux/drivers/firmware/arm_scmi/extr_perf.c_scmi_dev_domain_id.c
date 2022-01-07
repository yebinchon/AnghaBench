
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int* args; } ;
struct device {int of_node; } ;


 int EINVAL ;
 scalar_t__ of_parse_phandle_with_args (int ,char*,char*,int ,struct of_phandle_args*) ;

__attribute__((used)) static int scmi_dev_domain_id(struct device *dev)
{
 struct of_phandle_args clkspec;

 if (of_parse_phandle_with_args(dev->of_node, "clocks", "#clock-cells",
           0, &clkspec))
  return -EINVAL;

 return clkspec.args[0];
}
