
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pegasus {TYPE_1__* usbdev; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NOTETAKER_REPORT_ID ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_REQ_SET_REPORT ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int kfree (int*) ;
 int* kmalloc (int const,int ) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ unlikely (int) ;
 int usb_control_msg (TYPE_1__*,int ,int ,int,int ,int ,int*,int const,int ) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int pegasus_control_msg(struct pegasus *pegasus, u8 *data, int len)
{
 const int sizeof_buf = len + 2;
 int result;
 int error;
 u8 *cmd_buf;

 cmd_buf = kmalloc(sizeof_buf, GFP_KERNEL);
 if (!cmd_buf)
  return -ENOMEM;

 cmd_buf[0] = NOTETAKER_REPORT_ID;
 cmd_buf[1] = len;
 memcpy(cmd_buf + 2, data, len);

 result = usb_control_msg(pegasus->usbdev,
     usb_sndctrlpipe(pegasus->usbdev, 0),
     USB_REQ_SET_REPORT,
     USB_TYPE_VENDOR | USB_DIR_OUT,
     0, 0, cmd_buf, sizeof_buf,
     USB_CTRL_SET_TIMEOUT);

 kfree(cmd_buf);

 if (unlikely(result != sizeof_buf)) {
  error = result < 0 ? result : -EIO;
  dev_err(&pegasus->usbdev->dev, "control msg error: %d\n",
   error);
  return error;
 }

 return 0;
}
