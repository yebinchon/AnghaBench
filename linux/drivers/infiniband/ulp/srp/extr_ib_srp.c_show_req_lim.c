
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int ch_count; struct srp_rdma_ch* ch; } ;
struct srp_rdma_ch {int req_lim; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int INT_MAX ;
 int class_to_shost (struct device*) ;
 struct srp_target_port* host_to_target (int ) ;
 int min (int,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_req_lim(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct srp_target_port *target = host_to_target(class_to_shost(dev));
 struct srp_rdma_ch *ch;
 int i, req_lim = INT_MAX;

 for (i = 0; i < target->ch_count; i++) {
  ch = &target->ch[i];
  req_lim = min(req_lim, ch->req_lim);
 }
 return sprintf(buf, "%d\n", req_lim);
}
