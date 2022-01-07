
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 int PSCI_CONDUIT_HVC ;
 int PSCI_CONDUIT_SMC ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 int pr_info (char*) ;
 int pr_warn (char*,...) ;
 int set_conduit (int ) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int get_set_conduit_method(struct device_node *np)
{
 const char *method;

 pr_info("probing for conduit method from DT.\n");

 if (of_property_read_string(np, "method", &method)) {
  pr_warn("missing \"method\" property\n");
  return -ENXIO;
 }

 if (!strcmp("hvc", method)) {
  set_conduit(PSCI_CONDUIT_HVC);
 } else if (!strcmp("smc", method)) {
  set_conduit(PSCI_CONDUIT_SMC);
 } else {
  pr_warn("invalid \"method\" property: %s\n", method);
  return -EINVAL;
 }
 return 0;
}
