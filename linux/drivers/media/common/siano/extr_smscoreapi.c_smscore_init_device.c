
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smscore_device_t {int gfp_buf_flags; int init_device_done; } ;
struct TYPE_2__ {int msg_length; } ;
struct sms_msg_data {int* msg_data; TYPE_1__ x_msg_header; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_SMS_INIT_DEVICE_REQ ;
 scalar_t__ SMS_ALIGN_ADDRESS (void*) ;
 scalar_t__ SMS_DMA_ALIGNMENT ;
 int SMS_INIT_MSG (TYPE_1__*,int ,int) ;
 int kfree (void*) ;
 void* kmalloc (scalar_t__,int) ;
 int smscore_sendrequest_and_wait (struct smscore_device_t*,struct sms_msg_data*,int ,int *) ;

__attribute__((used)) static int smscore_init_device(struct smscore_device_t *coredev, int mode)
{
 void *buffer;
 struct sms_msg_data *msg;
 int rc = 0;

 buffer = kmalloc(sizeof(struct sms_msg_data) +
   SMS_DMA_ALIGNMENT, GFP_KERNEL | coredev->gfp_buf_flags);
 if (!buffer)
  return -ENOMEM;

 msg = (struct sms_msg_data *)SMS_ALIGN_ADDRESS(buffer);
 SMS_INIT_MSG(&msg->x_msg_header, MSG_SMS_INIT_DEVICE_REQ,
   sizeof(struct sms_msg_data));
 msg->msg_data[0] = mode;

 rc = smscore_sendrequest_and_wait(coredev, msg,
   msg->x_msg_header. msg_length,
   &coredev->init_device_done);

 kfree(buffer);
 return rc;
}
