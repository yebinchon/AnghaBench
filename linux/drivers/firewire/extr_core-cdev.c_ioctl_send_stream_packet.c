
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_cdev_send_stream_packet {int speed; int length; int tag; int channel; int sy; int generation; int data; int closure; } ;
union ioctl_arg {struct fw_cdev_send_stream_packet send_stream_packet; } ;
struct fw_cdev_send_request {int length; int generation; int data; int closure; int tcode; } ;
struct client {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int link_speed; } ;


 int EINVAL ;
 int EIO ;
 int TCODE_STREAM_DATA ;
 int fw_stream_packet_destination_id (int,int,int) ;
 int init_request (struct client*,struct fw_cdev_send_request*,int,int) ;

__attribute__((used)) static int ioctl_send_stream_packet(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_send_stream_packet *a = &arg->send_stream_packet;
 struct fw_cdev_send_request request;
 int dest;

 if (a->speed > client->device->card->link_speed ||
     a->length > 1024 << a->speed)
  return -EIO;

 if (a->tag > 3 || a->channel > 63 || a->sy > 15)
  return -EINVAL;

 dest = fw_stream_packet_destination_id(a->tag, a->channel, a->sy);
 request.tcode = TCODE_STREAM_DATA;
 request.length = a->length;
 request.closure = a->closure;
 request.data = a->data;
 request.generation = a->generation;

 return init_request(client, &request, dest, a->speed);
}
