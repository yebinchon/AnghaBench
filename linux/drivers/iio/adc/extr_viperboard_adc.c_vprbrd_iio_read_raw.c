
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vprbrd_adc_msg {int val; int chan; int cmd; } ;
struct vprbrd_adc {struct vprbrd* vb; } ;
struct vprbrd {int lock; int usb_dev; scalar_t__ buf; } ;
struct iio_dev {int dev; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;
 int EREMOTEIO ;

 int IIO_VAL_INT ;
 int VPRBRD_ADC_CMD_GET ;
 int VPRBRD_USB_REQUEST_ADC ;
 int VPRBRD_USB_TIMEOUT_MS ;
 int VPRBRD_USB_TYPE_IN ;
 int VPRBRD_USB_TYPE_OUT ;
 int dev_err (int *,char*) ;
 struct vprbrd_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,struct vprbrd_adc_msg*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int vprbrd_iio_read_raw(struct iio_dev *iio_dev,
    struct iio_chan_spec const *chan,
    int *val,
    int *val2,
    long info)
{
 int ret, error = 0;
 struct vprbrd_adc *adc = iio_priv(iio_dev);
 struct vprbrd *vb = adc->vb;
 struct vprbrd_adc_msg *admsg = (struct vprbrd_adc_msg *)vb->buf;

 switch (info) {
 case 128:
  mutex_lock(&vb->lock);

  admsg->cmd = VPRBRD_ADC_CMD_GET;
  admsg->chan = chan->channel;
  admsg->val = 0x00;

  ret = usb_control_msg(vb->usb_dev,
   usb_sndctrlpipe(vb->usb_dev, 0), VPRBRD_USB_REQUEST_ADC,
   VPRBRD_USB_TYPE_OUT, 0x0000, 0x0000, admsg,
   sizeof(struct vprbrd_adc_msg), VPRBRD_USB_TIMEOUT_MS);
  if (ret != sizeof(struct vprbrd_adc_msg)) {
   dev_err(&iio_dev->dev, "usb send error on adc read\n");
   error = -EREMOTEIO;
  }

  ret = usb_control_msg(vb->usb_dev,
   usb_rcvctrlpipe(vb->usb_dev, 0), VPRBRD_USB_REQUEST_ADC,
   VPRBRD_USB_TYPE_IN, 0x0000, 0x0000, admsg,
   sizeof(struct vprbrd_adc_msg), VPRBRD_USB_TIMEOUT_MS);

  *val = admsg->val;

  mutex_unlock(&vb->lock);

  if (ret != sizeof(struct vprbrd_adc_msg)) {
   dev_err(&iio_dev->dev, "usb recv error on adc read\n");
   error = -EREMOTEIO;
  }

  if (error)
   goto error;

  return IIO_VAL_INT;
 default:
  error = -EINVAL;
  break;
 }
error:
 return error;
}
