
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ims_pcu {int read_dma; void* urb_in_buf; int max_in_size; int udev; TYPE_3__* urb_in; int urb_out_buf; int ctrl_dma; void* urb_ctrl_buf; int max_ctrl_size; TYPE_2__* ep_ctrl; TYPE_4__* urb_ctrl; int dev; int max_out_size; TYPE_1__* ep_in; } ;
struct TYPE_9__ {int transfer_dma; int transfer_flags; } ;
struct TYPE_8__ {int transfer_dma; int transfer_flags; } ;
struct TYPE_7__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_6__ {int bEndpointAddress; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int ,char*) ;
 int ims_pcu_irq ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 void* usb_alloc_coherent (int ,int ,int ,int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (TYPE_3__*,int ,int ,void*,int ,int ,struct ims_pcu*) ;
 int usb_fill_int_urb (TYPE_4__*,int ,int ,void*,int ,int ,struct ims_pcu*,int ) ;
 int usb_free_coherent (int ,int ,void*,int ) ;
 int usb_free_urb (TYPE_3__*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_rcvintpipe (int ,int ) ;

__attribute__((used)) static int ims_pcu_buffers_alloc(struct ims_pcu *pcu)
{
 int error;

 pcu->urb_in_buf = usb_alloc_coherent(pcu->udev, pcu->max_in_size,
          GFP_KERNEL, &pcu->read_dma);
 if (!pcu->urb_in_buf) {
  dev_err(pcu->dev,
   "Failed to allocate memory for read buffer\n");
  return -ENOMEM;
 }

 pcu->urb_in = usb_alloc_urb(0, GFP_KERNEL);
 if (!pcu->urb_in) {
  dev_err(pcu->dev, "Failed to allocate input URB\n");
  error = -ENOMEM;
  goto err_free_urb_in_buf;
 }

 pcu->urb_in->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 pcu->urb_in->transfer_dma = pcu->read_dma;

 usb_fill_bulk_urb(pcu->urb_in, pcu->udev,
     usb_rcvbulkpipe(pcu->udev,
       pcu->ep_in->bEndpointAddress),
     pcu->urb_in_buf, pcu->max_in_size,
     ims_pcu_irq, pcu);





 pcu->urb_out_buf = kmalloc(pcu->max_out_size, GFP_KERNEL);
 if (!pcu->urb_out_buf) {
  dev_err(pcu->dev, "Failed to allocate memory for write buffer\n");
  error = -ENOMEM;
  goto err_free_in_urb;
 }

 pcu->urb_ctrl_buf = usb_alloc_coherent(pcu->udev, pcu->max_ctrl_size,
            GFP_KERNEL, &pcu->ctrl_dma);
 if (!pcu->urb_ctrl_buf) {
  dev_err(pcu->dev,
   "Failed to allocate memory for read buffer\n");
  error = -ENOMEM;
  goto err_free_urb_out_buf;
 }

 pcu->urb_ctrl = usb_alloc_urb(0, GFP_KERNEL);
 if (!pcu->urb_ctrl) {
  dev_err(pcu->dev, "Failed to allocate input URB\n");
  error = -ENOMEM;
  goto err_free_urb_ctrl_buf;
 }

 pcu->urb_ctrl->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 pcu->urb_ctrl->transfer_dma = pcu->ctrl_dma;

 usb_fill_int_urb(pcu->urb_ctrl, pcu->udev,
     usb_rcvintpipe(pcu->udev,
      pcu->ep_ctrl->bEndpointAddress),
     pcu->urb_ctrl_buf, pcu->max_ctrl_size,
     ims_pcu_irq, pcu, pcu->ep_ctrl->bInterval);

 return 0;

err_free_urb_ctrl_buf:
 usb_free_coherent(pcu->udev, pcu->max_ctrl_size,
     pcu->urb_ctrl_buf, pcu->ctrl_dma);
err_free_urb_out_buf:
 kfree(pcu->urb_out_buf);
err_free_in_urb:
 usb_free_urb(pcu->urb_in);
err_free_urb_in_buf:
 usb_free_coherent(pcu->udev, pcu->max_in_size,
     pcu->urb_in_buf, pcu->read_dma);
 return error;
}
