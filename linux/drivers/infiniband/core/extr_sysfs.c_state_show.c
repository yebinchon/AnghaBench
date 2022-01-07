
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_attribute {int dummy; } ;
struct ib_port_attr {size_t state; } ;
struct ib_port {int port_num; int ibdev; } ;
typedef scalar_t__ ssize_t ;


 size_t ARRAY_SIZE (char const**) ;






 scalar_t__ ib_query_port (int ,int ,struct ib_port_attr*) ;
 scalar_t__ sprintf (char*,char*,size_t,char const*) ;

__attribute__((used)) static ssize_t state_show(struct ib_port *p, struct port_attribute *unused,
     char *buf)
{
 struct ib_port_attr attr;
 ssize_t ret;

 static const char *state_name[] = {
  [128] = "NOP",
  [130] = "DOWN",
  [129] = "INIT",
  [131] = "ARMED",
  [133] = "ACTIVE",
  [132] = "ACTIVE_DEFER"
 };

 ret = ib_query_port(p->ibdev, p->port_num, &attr);
 if (ret)
  return ret;

 return sprintf(buf, "%d: %s\n", attr.state,
         attr.state >= 0 && attr.state < ARRAY_SIZE(state_name) ?
         state_name[attr.state] : "UNKNOWN");
}
