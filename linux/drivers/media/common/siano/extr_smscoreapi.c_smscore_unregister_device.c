
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_device_t {int num_buffers; int entry; struct smscore_device_t* fw_buf; int common_buffer_phys; struct smscore_device_t* common_buffer; int common_buffer_size; int device; scalar_t__ usb_device; TYPE_1__ buffers; } ;
struct smscore_buffer_t {int num_buffers; int entry; struct smscore_buffer_t* fw_buf; int common_buffer_phys; struct smscore_buffer_t* common_buffer; int common_buffer_size; int device; scalar_t__ usb_device; TYPE_1__ buffers; } ;


 int dma_free_coherent (int ,int ,struct smscore_device_t*,int ) ;
 int g_smscore_deviceslock ;
 int kfree (struct smscore_device_t*) ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 int list_del (int *) ;
 int list_empty (TYPE_1__*) ;
 int msleep (int) ;
 int pr_debug (char*,...) ;
 int pr_info (char*) ;
 int sms_ir_exit (struct smscore_device_t*) ;
 int smscore_notify_callbacks (struct smscore_device_t*,int *,int ) ;
 int smscore_notify_clients (struct smscore_device_t*) ;

void smscore_unregister_device(struct smscore_device_t *coredev)
{
 struct smscore_buffer_t *cb;
 int num_buffers = 0;
 int retry = 0;

 kmutex_lock(&g_smscore_deviceslock);


 sms_ir_exit(coredev);

 smscore_notify_clients(coredev);
 smscore_notify_callbacks(coredev, ((void*)0), 0);




 while (1) {
  while (!list_empty(&coredev->buffers)) {
   cb = (struct smscore_buffer_t *) coredev->buffers.next;
   list_del(&cb->entry);
   kfree(cb);
   num_buffers++;
  }
  if (num_buffers == coredev->num_buffers)
   break;
  if (++retry > 10) {
   pr_info("exiting although not all buffers released.\n");
   break;
  }

  pr_debug("waiting for %d buffer(s)\n",
    coredev->num_buffers - num_buffers);
  kmutex_unlock(&g_smscore_deviceslock);
  msleep(100);
  kmutex_lock(&g_smscore_deviceslock);
 }

 pr_debug("freed %d buffers\n", num_buffers);

 if (coredev->common_buffer) {
  if (coredev->usb_device)
   kfree(coredev->common_buffer);
  else
   dma_free_coherent(coredev->device,
       coredev->common_buffer_size,
       coredev->common_buffer,
       coredev->common_buffer_phys);
 }
 kfree(coredev->fw_buf);

 list_del(&coredev->entry);
 kfree(coredev);

 kmutex_unlock(&g_smscore_deviceslock);

 pr_debug("device %p destroyed\n", coredev);
}
