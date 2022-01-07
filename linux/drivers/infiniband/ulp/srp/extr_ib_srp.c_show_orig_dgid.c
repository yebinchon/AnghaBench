
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {TYPE_1__ orig_dgid; } ;
struct srp_target_port {TYPE_2__ ib_cm; scalar_t__ using_rdma_cm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOENT ;
 int class_to_shost (struct device*) ;
 struct srp_target_port* host_to_target (int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_orig_dgid(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct srp_target_port *target = host_to_target(class_to_shost(dev));

 if (target->using_rdma_cm)
  return -ENOENT;
 return sprintf(buf, "%pI6\n", target->ib_cm.orig_dgid.raw);
}
