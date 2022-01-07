
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int ioc_guid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int be64_to_cpu (int ) ;
 int class_to_shost (struct device*) ;
 struct srp_target_port* host_to_target (int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_ioc_guid(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct srp_target_port *target = host_to_target(class_to_shost(dev));

 return sprintf(buf, "0x%016llx\n", be64_to_cpu(target->ioc_guid));
}
