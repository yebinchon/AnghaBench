
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2832_sdr_dev {size_t buf_num; int flags; int * dma_addr; int * buf_list; int buf_size; int udev; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int URB_BUF ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*,size_t) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static int rtl2832_sdr_free_stream_bufs(struct rtl2832_sdr_dev *dev)
{
 struct platform_device *pdev = dev->pdev;

 if (test_bit(URB_BUF, &dev->flags)) {
  while (dev->buf_num) {
   dev->buf_num--;
   dev_dbg(&pdev->dev, "free buf=%d\n", dev->buf_num);
   usb_free_coherent(dev->udev, dev->buf_size,
       dev->buf_list[dev->buf_num],
       dev->dma_addr[dev->buf_num]);
  }
 }
 clear_bit(URB_BUF, &dev->flags);

 return 0;
}
