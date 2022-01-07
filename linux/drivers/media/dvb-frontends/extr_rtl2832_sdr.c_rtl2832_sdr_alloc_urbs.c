
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rtl2832_sdr_dev {int urbs_initialized; int * dma_addr; TYPE_1__** urb_list; int * buf_list; int udev; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int transfer_dma; int transfer_flags; } ;


 int BULK_BUFFER_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_BULK_BUFS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_dbg (int *,char*,int) ;
 int rtl2832_sdr_urb_complete ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct rtl2832_sdr_dev*) ;
 int usb_free_urb (TYPE_1__*) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static int rtl2832_sdr_alloc_urbs(struct rtl2832_sdr_dev *dev)
{
 struct platform_device *pdev = dev->pdev;
 int i, j;


 for (i = 0; i < MAX_BULK_BUFS; i++) {
  dev_dbg(&pdev->dev, "alloc urb=%d\n", i);
  dev->urb_list[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!dev->urb_list[i]) {
   for (j = 0; j < i; j++)
    usb_free_urb(dev->urb_list[j]);
   return -ENOMEM;
  }
  usb_fill_bulk_urb(dev->urb_list[i],
    dev->udev,
    usb_rcvbulkpipe(dev->udev, 0x81),
    dev->buf_list[i],
    BULK_BUFFER_SIZE,
    rtl2832_sdr_urb_complete, dev);

  dev->urb_list[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
  dev->urb_list[i]->transfer_dma = dev->dma_addr[i];
  dev->urbs_initialized++;
 }

 return 0;
}
