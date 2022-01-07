
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {size_t state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 char** state_str ;
 struct fpga_manager* to_fpga_manager (struct device*) ;

__attribute__((used)) static ssize_t state_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct fpga_manager *mgr = to_fpga_manager(dev);

 return sprintf(buf, "%s\n", state_str[mgr->state]);
}
