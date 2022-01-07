
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dev; } ;
struct hexline {int* data; int len; int addr; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int cs_reg; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 TYPE_1__* cypress ;
 int cypress_get_hexline (struct firmware const*,struct hexline*,int*) ;
 int dev_err (int *,char*,int ,int,...) ;
 int kfree (struct hexline*) ;
 struct hexline* kmalloc (int,int ) ;
 int usb_cypress_writemem (struct usb_device*,int ,int*,int) ;

int cypress_load_firmware(struct usb_device *udev,
  const struct firmware *fw, int type)
{
 struct hexline *hx;
 int ret, pos = 0;

 hx = kmalloc(sizeof(*hx), GFP_KERNEL);
 if (!hx)
  return -ENOMEM;


 hx->data[0] = 1;
 ret = usb_cypress_writemem(udev, cypress[type].cs_reg, hx->data, 1);
 if (ret != 1) {
  dev_err(&udev->dev, "%s: CPU stop failed=%d\n",
    KBUILD_MODNAME, ret);
  ret = -EIO;
  goto err_kfree;
 }


 for (;;) {
  ret = cypress_get_hexline(fw, hx, &pos);
  if (ret < 0)
   goto err_kfree;
  else if (ret == 0)
   break;

  ret = usb_cypress_writemem(udev, hx->addr, hx->data, hx->len);
  if (ret < 0) {
   goto err_kfree;
  } else if (ret != hx->len) {
   dev_err(&udev->dev,
     "%s: error while transferring firmware (transferred size=%d, block size=%d)\n",
     KBUILD_MODNAME, ret, hx->len);
   ret = -EIO;
   goto err_kfree;
  }
 }


 hx->data[0] = 0;
 ret = usb_cypress_writemem(udev, cypress[type].cs_reg, hx->data, 1);
 if (ret != 1) {
  dev_err(&udev->dev, "%s: CPU start failed=%d\n",
    KBUILD_MODNAME, ret);
  ret = -EIO;
  goto err_kfree;
 }

 ret = 0;
err_kfree:
 kfree(hx);
 return ret;
}
