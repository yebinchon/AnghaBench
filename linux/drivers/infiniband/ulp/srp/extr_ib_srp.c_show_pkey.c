
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkey; } ;
struct srp_target_port {TYPE_1__ ib_cm; scalar_t__ using_rdma_cm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOENT ;
 int be16_to_cpu (int ) ;
 int class_to_shost (struct device*) ;
 struct srp_target_port* host_to_target (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_pkey(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct srp_target_port *target = host_to_target(class_to_shost(dev));

 if (target->using_rdma_cm)
  return -ENOENT;
 return sprintf(buf, "0x%04x\n", be16_to_cpu(target->ib_cm.pkey));
}
