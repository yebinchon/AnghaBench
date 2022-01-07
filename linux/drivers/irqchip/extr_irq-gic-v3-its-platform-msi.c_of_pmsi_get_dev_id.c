
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_phandle_args {scalar_t__ np; int args_count; int * args; } ;
struct irq_domain {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ irq_domain_get_of_node (struct irq_domain*) ;
 int of_parse_phandle_with_args (int ,char*,char*,int,struct of_phandle_args*) ;

__attribute__((used)) static int of_pmsi_get_dev_id(struct irq_domain *domain, struct device *dev,
      u32 *dev_id)
{
 int ret, index = 0;


 do {
  struct of_phandle_args args;

  ret = of_parse_phandle_with_args(dev->of_node,
       "msi-parent", "#msi-cells",
       index, &args);
  if (args.np == irq_domain_get_of_node(domain)) {
   if (WARN_ON(args.args_count != 1))
    return -EINVAL;
   *dev_id = args.args[0];
   break;
  }
  index++;
 } while (!ret);

 return ret;
}
