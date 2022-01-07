
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tcode; } ;
union ioctl_arg {TYPE_2__ send_request; } ;
struct client {TYPE_1__* device; } ;
struct TYPE_3__ {int max_speed; int node_id; } ;


 int EINVAL ;
 int init_request (struct client*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static int ioctl_send_request(struct client *client, union ioctl_arg *arg)
{
 switch (arg->send_request.tcode) {
 case 128:
 case 129:
 case 130:
 case 131:
 case 134:
 case 137:
 case 136:
 case 135:
 case 138:
 case 132:
 case 133:
  break;
 default:
  return -EINVAL;
 }

 return init_request(client, &arg->send_request, client->device->node_id,
       client->device->max_speed);
}
