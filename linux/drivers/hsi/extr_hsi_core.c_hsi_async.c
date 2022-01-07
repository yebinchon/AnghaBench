
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_port {int (* async ) (struct hsi_msg*) ;} ;
struct hsi_msg {struct hsi_client* cl; int complete; int destructor; } ;
struct hsi_client {int dummy; } ;


 int EACCES ;
 int WARN_ON_ONCE (int) ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 int hsi_port_claimed (struct hsi_client*) ;
 int stub1 (struct hsi_msg*) ;

int hsi_async(struct hsi_client *cl, struct hsi_msg *msg)
{
 struct hsi_port *port = hsi_get_port(cl);

 if (!hsi_port_claimed(cl))
  return -EACCES;

 WARN_ON_ONCE(!msg->destructor || !msg->complete);
 msg->cl = cl;

 return port->async(msg);
}
