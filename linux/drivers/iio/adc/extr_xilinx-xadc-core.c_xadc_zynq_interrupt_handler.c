
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xadc {int zynq_intmask; int zynq_masked_alarm; int lock; int zynq_unmask_work; int completion; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XADC_ZYNQ_INT_ALARM_MASK ;
 int XADC_ZYNQ_INT_DFIFO_GTH ;
 int XADC_ZYNQ_REG_INTSTS ;
 int XADC_ZYNQ_UNMASK_TIMEOUT ;
 int complete (int *) ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xadc_handle_events (struct iio_dev*,int ) ;
 int xadc_read_reg (struct xadc*,int ,int*) ;
 int xadc_write_reg (struct xadc*,int ,int) ;
 int xadc_zynq_transform_alarm (int) ;
 int xadc_zynq_update_intmsk (struct xadc*,int,int) ;

__attribute__((used)) static irqreturn_t xadc_zynq_interrupt_handler(int irq, void *devid)
{
 struct iio_dev *indio_dev = devid;
 struct xadc *xadc = iio_priv(indio_dev);
 uint32_t status;

 xadc_read_reg(xadc, XADC_ZYNQ_REG_INTSTS, &status);

 status &= ~(xadc->zynq_intmask | xadc->zynq_masked_alarm);

 if (!status)
  return IRQ_NONE;

 spin_lock(&xadc->lock);

 xadc_write_reg(xadc, XADC_ZYNQ_REG_INTSTS, status);

 if (status & XADC_ZYNQ_INT_DFIFO_GTH) {
  xadc_zynq_update_intmsk(xadc, XADC_ZYNQ_INT_DFIFO_GTH,
   XADC_ZYNQ_INT_DFIFO_GTH);
  complete(&xadc->completion);
 }

 status &= XADC_ZYNQ_INT_ALARM_MASK;
 if (status) {
  xadc->zynq_masked_alarm |= status;




  xadc_zynq_update_intmsk(xadc, 0, 0);

  xadc_handle_events(indio_dev,
    xadc_zynq_transform_alarm(status));


  schedule_delayed_work(&xadc->zynq_unmask_work,
    msecs_to_jiffies(XADC_ZYNQ_UNMASK_TIMEOUT));
 }
 spin_unlock(&xadc->lock);

 return IRQ_HANDLED;
}
