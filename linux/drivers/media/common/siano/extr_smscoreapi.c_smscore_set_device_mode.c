
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smscore_device_t {int device_flags; int mode; int modes_supported; int fw_version; int (* setmode_handler ) (int ,int) ;int gfp_buf_flags; int init_device_done; int context; int (* detectmode_handler ) (int ,int*) ;int devpath; } ;
struct TYPE_2__ {int msg_length; } ;
struct sms_msg_data {int* msg_data; TYPE_1__ x_msg_header; } ;


 int DEVICE_MODE_MAX ;
 int DEVICE_MODE_NONE ;
 int EINVAL ;
 int GFP_KERNEL ;
 int MSG_SMS_INIT_DEVICE_REQ ;
 scalar_t__ SMS_ALIGN_ADDRESS (char*) ;
 int SMS_DEVICE_FAMILY2 ;
 int SMS_DEVICE_NOT_READY ;
 scalar_t__ SMS_DMA_ALIGNMENT ;
 int SMS_INIT_MSG (TYPE_1__*,int ,int) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int) ;
 int smscore_detect_mode (struct smscore_device_t*) ;
 int smscore_init_device (struct smscore_device_t*,int) ;
 int smscore_load_firmware_from_file (struct smscore_device_t*,int,int *) ;
 int smscore_registry_setmode (int ,int) ;
 int smscore_sendrequest_and_wait (struct smscore_device_t*,struct sms_msg_data*,int ,int *) ;
 int stub1 (int ,int*) ;
 int stub2 (int ,int) ;

int smscore_set_device_mode(struct smscore_device_t *coredev, int mode)
{
 int rc = 0;

 pr_debug("set device mode to %d\n", mode);
 if (coredev->device_flags & SMS_DEVICE_FAMILY2) {
  if (mode <= DEVICE_MODE_NONE || mode >= DEVICE_MODE_MAX) {
   pr_err("invalid mode specified %d\n", mode);
   return -EINVAL;
  }

  smscore_registry_setmode(coredev->devpath, mode);

  if (!(coredev->device_flags & SMS_DEVICE_NOT_READY)) {
   rc = smscore_detect_mode(coredev);
   if (rc < 0) {
    pr_err("mode detect failed %d\n", rc);
    return rc;
   }
  }

  if (coredev->mode == mode) {
   pr_debug("device mode %d already set\n", mode);
   return 0;
  }

  if (!(coredev->modes_supported & (1 << mode))) {
   rc = smscore_load_firmware_from_file(coredev,
            mode, ((void*)0));
   if (rc >= 0)
    pr_debug("firmware download success\n");
  } else {
   pr_debug("mode %d is already supported by running firmware\n",
     mode);
  }
  if (coredev->fw_version >= 0x800) {
   rc = smscore_init_device(coredev, mode);
   if (rc < 0)
    pr_err("device init failed, rc %d.\n", rc);
  }
 } else {
  if (mode <= DEVICE_MODE_NONE || mode >= DEVICE_MODE_MAX) {
   pr_err("invalid mode specified %d\n", mode);
   return -EINVAL;
  }

  smscore_registry_setmode(coredev->devpath, mode);

  if (coredev->detectmode_handler)
   coredev->detectmode_handler(coredev->context,
          &coredev->mode);

  if (coredev->mode != mode && coredev->setmode_handler)
   rc = coredev->setmode_handler(coredev->context, mode);
 }

 if (rc >= 0) {
  char *buffer;
  coredev->mode = mode;
  coredev->device_flags &= ~SMS_DEVICE_NOT_READY;

  buffer = kmalloc(sizeof(struct sms_msg_data) +
     SMS_DMA_ALIGNMENT, GFP_KERNEL | coredev->gfp_buf_flags);
  if (buffer) {
   struct sms_msg_data *msg = (struct sms_msg_data *) SMS_ALIGN_ADDRESS(buffer);

   SMS_INIT_MSG(&msg->x_msg_header, MSG_SMS_INIT_DEVICE_REQ,
         sizeof(struct sms_msg_data));
   msg->msg_data[0] = mode;

   rc = smscore_sendrequest_and_wait(
    coredev, msg, msg->x_msg_header.msg_length,
    &coredev->init_device_done);

   kfree(buffer);
  }
 }

 if (rc < 0)
  pr_err("return error code %d.\n", rc);
 else
  pr_debug("Success setting device mode.\n");

 return rc;
}
