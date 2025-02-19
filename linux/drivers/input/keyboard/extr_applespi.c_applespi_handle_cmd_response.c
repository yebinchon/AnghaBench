
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_packet {scalar_t__ device; } ;
struct message {int rsp_buf_len; int type; int length; int tp_info; } ;
struct applespi_data {TYPE_1__* spi; int work; int rcvd_tp_info; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ PACKET_DEV_INFO ;
 scalar_t__ PACKET_DEV_TPAD ;
 int dev_info (int *,char*) ;
 int dev_warn_ratelimited (int *,char*,int) ;
 int le16_to_cpu (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void applespi_handle_cmd_response(struct applespi_data *applespi,
      struct spi_packet *packet,
      struct message *message)
{
 if (packet->device == PACKET_DEV_INFO &&
     le16_to_cpu(message->type) == 0x1020) {




  applespi->rcvd_tp_info = message->tp_info;
  schedule_work(&applespi->work);
  return;
 }

 if (le16_to_cpu(message->length) != 0x0000) {
  dev_warn_ratelimited(&applespi->spi->dev,
         "Received unexpected write response: length=%x\n",
         le16_to_cpu(message->length));
  return;
 }

 if (packet->device == PACKET_DEV_TPAD &&
     le16_to_cpu(message->type) == 0x0252 &&
     le16_to_cpu(message->rsp_buf_len) == 0x0002)
  dev_info(&applespi->spi->dev, "modeswitch done.\n");
}
