
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_attribute {int dummy; } ;
struct ib_port_attr {int sm_lid; } ;
struct ib_port {int port_num; int ibdev; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ib_query_port (int ,int ,struct ib_port_attr*) ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t sm_lid_show(struct ib_port *p, struct port_attribute *unused,
      char *buf)
{
 struct ib_port_attr attr;
 ssize_t ret;

 ret = ib_query_port(p->ibdev, p->port_num, &attr);
 if (ret)
  return ret;

 return sprintf(buf, "0x%x\n", attr.sm_lid);
}
