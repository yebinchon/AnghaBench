
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vprbrd_i2c_status {int status; } ;
struct vprbrd {int usb_dev; } ;
struct i2c_adapter {int dev; scalar_t__ algo_data; } ;


 int EPROTO ;
 int EREMOTEIO ;
 int VPRBRD_USB_REQUEST_I2C ;
 int VPRBRD_USB_TIMEOUT_MS ;
 int VPRBRD_USB_TYPE_IN ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,struct vprbrd_i2c_status*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int vprbrd_i2c_status(struct i2c_adapter *i2c,
 struct vprbrd_i2c_status *status, bool prev_error)
{
 u16 bytes_xfer;
 int ret;
 struct vprbrd *vb = (struct vprbrd *)i2c->algo_data;


 bytes_xfer = sizeof(struct vprbrd_i2c_status);

 ret = usb_control_msg(vb->usb_dev, usb_rcvctrlpipe(vb->usb_dev, 0),
  VPRBRD_USB_REQUEST_I2C, VPRBRD_USB_TYPE_IN, 0x0000, 0x0000,
  status, bytes_xfer, VPRBRD_USB_TIMEOUT_MS);

 if (ret != bytes_xfer)
  prev_error = 1;

 if (prev_error) {
  dev_err(&i2c->dev, "failure in usb communication\n");
  return -EREMOTEIO;
 }

 dev_dbg(&i2c->dev, "  status = %d\n", status->status);
 if (status->status != 0x00) {
  dev_err(&i2c->dev, "failure: i2c protocol error\n");
  return -EPROTO;
 }
 return 0;
}
