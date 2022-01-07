
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct srp_target_port {scalar_t__ using_rdma_cm; struct srp_rdma_ch* ch; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {TYPE_1__ dgid; } ;
struct TYPE_6__ {TYPE_2__ path; } ;
struct srp_rdma_ch {TYPE_3__ ib_cm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOENT ;
 int class_to_shost (struct device*) ;
 struct srp_target_port* host_to_target (int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_dgid(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct srp_target_port *target = host_to_target(class_to_shost(dev));
 struct srp_rdma_ch *ch = &target->ch[0];

 if (target->using_rdma_cm)
  return -ENOENT;
 return sprintf(buf, "%pI6\n", ch->ib_cm.path.dgid.raw);
}
