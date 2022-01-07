
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_cdev_send_request {int tcode; scalar_t__ offset; } ;
union ioctl_arg {struct fw_cdev_send_request send_request; } ;
struct client {int dummy; } ;


 scalar_t__ CSR_CONFIG_ROM_END ;
 scalar_t__ CSR_REGISTER_BASE ;
 int EACCES ;
 int EINVAL ;
 int LOCAL_BUS ;
 int SCODE_100 ;


 int init_request (struct client*,struct fw_cdev_send_request*,int,int ) ;

__attribute__((used)) static int ioctl_send_broadcast_request(struct client *client,
     union ioctl_arg *arg)
{
 struct fw_cdev_send_request *a = &arg->send_request;

 switch (a->tcode) {
 case 128:
 case 129:
  break;
 default:
  return -EINVAL;
 }


 if (a->offset < CSR_REGISTER_BASE + CSR_CONFIG_ROM_END)
  return -EACCES;

 return init_request(client, a, LOCAL_BUS | 0x3f, SCODE_100);
}
