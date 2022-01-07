
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_cdev_create_iso_context {int type; int channel; int header_size; scalar_t__ handle; int closure; int speed; } ;
union ioctl_arg {struct fw_cdev_create_iso_context create_iso_context; } ;
struct fw_iso_context {int drop_overflow_headers; } ;
struct client {scalar_t__ version; int buffer_is_mapped; int lock; struct fw_iso_context* iso_context; int iso_closure; TYPE_1__* device; int buffer; } ;
typedef int fw_iso_callback_t ;
struct TYPE_2__ {int card; } ;


 int BUILD_BUG_ON (int) ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_RECEIVE ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_TRANSMIT ;
 scalar_t__ FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW ;



 scalar_t__ IS_ERR (struct fw_iso_context*) ;
 int PTR_ERR (struct fw_iso_context*) ;
 int SCODE_3200 ;
 int fw_iso_buffer_map_dma (int *,int ,int ) ;
 struct fw_iso_context* fw_iso_context_create (int ,int,int,int ,int,int ,struct client*) ;
 int fw_iso_context_destroy (struct fw_iso_context*) ;
 int iso_callback ;
 int iso_dma_direction (struct fw_iso_context*) ;
 int iso_mc_callback ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
 struct fw_iso_context *context;
 fw_iso_callback_t cb;
 int ret;

 BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != 128 ||
       FW_CDEV_ISO_CONTEXT_RECEIVE != 130 ||
       FW_CDEV_ISO_CONTEXT_RECEIVE_MULTICHANNEL !=
     129);

 switch (a->type) {
 case 128:
  if (a->speed > SCODE_3200 || a->channel > 63)
   return -EINVAL;

  cb = iso_callback;
  break;

 case 130:
  if (a->header_size < 4 || (a->header_size & 3) ||
      a->channel > 63)
   return -EINVAL;

  cb = iso_callback;
  break;

 case 129:
  cb = (fw_iso_callback_t)iso_mc_callback;
  break;

 default:
  return -EINVAL;
 }

 context = fw_iso_context_create(client->device->card, a->type,
   a->channel, a->speed, a->header_size, cb, client);
 if (IS_ERR(context))
  return PTR_ERR(context);
 if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
  context->drop_overflow_headers = 1;


 spin_lock_irq(&client->lock);
 if (client->iso_context != ((void*)0)) {
  spin_unlock_irq(&client->lock);
  fw_iso_context_destroy(context);

  return -EBUSY;
 }
 if (!client->buffer_is_mapped) {
  ret = fw_iso_buffer_map_dma(&client->buffer,
         client->device->card,
         iso_dma_direction(context));
  if (ret < 0) {
   spin_unlock_irq(&client->lock);
   fw_iso_context_destroy(context);

   return ret;
  }
  client->buffer_is_mapped = 1;
 }
 client->iso_closure = a->closure;
 client->iso_context = context;
 spin_unlock_irq(&client->lock);

 a->handle = 0;

 return 0;
}
