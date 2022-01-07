
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svc_invoke_fn ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENXIO ;
 int * ERR_PTR (int ) ;
 int dev_warn (struct device*,char*,...) ;
 scalar_t__ of_property_read_string (int ,char*,char const**) ;
 int strcmp (char const*,char*) ;
 int * svc_smccc_hvc ;
 int * svc_smccc_smc ;

__attribute__((used)) static svc_invoke_fn *get_invoke_func(struct device *dev)
{
 const char *method;

 if (of_property_read_string(dev->of_node, "method", &method)) {
  dev_warn(dev, "missing \"method\" property\n");
  return ERR_PTR(-ENXIO);
 }

 if (!strcmp(method, "smc"))
  return svc_smccc_smc;
 if (!strcmp(method, "hvc"))
  return svc_smccc_hvc;

 dev_warn(dev, "invalid \"method\" property: %s\n", method);

 return ERR_PTR(-EINVAL);
}
