
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ina3221_input {int disconnected; size_t shunt_resistor; int label; } ;
struct ina3221_data {struct ina3221_input* inputs; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 size_t INA3221_CHANNEL3 ;
 size_t INT_MAX ;
 int dev_err (struct device*,char*,size_t,...) ;
 int of_device_is_available (struct device_node*) ;
 int of_property_read_string (struct device_node*,char*,int *) ;
 int of_property_read_u32 (struct device_node*,char*,size_t*) ;

__attribute__((used)) static int ina3221_probe_child_from_dt(struct device *dev,
           struct device_node *child,
           struct ina3221_data *ina)
{
 struct ina3221_input *input;
 u32 val;
 int ret;

 ret = of_property_read_u32(child, "reg", &val);
 if (ret) {
  dev_err(dev, "missing reg property of %pOFn\n", child);
  return ret;
 } else if (val > INA3221_CHANNEL3) {
  dev_err(dev, "invalid reg %d of %pOFn\n", val, child);
  return ret;
 }

 input = &ina->inputs[val];


 if (!of_device_is_available(child)) {
  input->disconnected = 1;
  return 0;
 }


 of_property_read_string(child, "label", &input->label);


 if (!of_property_read_u32(child, "shunt-resistor-micro-ohms", &val)) {
  if (val < 1 || val > INT_MAX) {
   dev_err(dev, "invalid shunt resistor value %u of %pOFn\n",
    val, child);
   return -EINVAL;
  }
  input->shunt_resistor = val;
 }

 return 0;
}
