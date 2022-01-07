
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {scalar_t__ allow_ext_sg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int class_to_shost (struct device*) ;
 struct srp_target_port* host_to_target (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_allow_ext_sg(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct srp_target_port *target = host_to_target(class_to_shost(dev));

 return sprintf(buf, "%s\n", target->allow_ext_sg ? "true" : "false");
}
