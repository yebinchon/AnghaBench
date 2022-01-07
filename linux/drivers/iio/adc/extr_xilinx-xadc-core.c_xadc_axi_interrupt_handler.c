
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xadc {scalar_t__ trigger; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XADC_AXI_INT_ALARM_MASK ;
 int XADC_AXI_INT_EOS ;
 int XADC_AXI_REG_IPIER ;
 int XADC_AXI_REG_IPISR ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (scalar_t__) ;
 int xadc_handle_events (struct iio_dev*,unsigned int) ;
 int xadc_read_reg (struct xadc*,int ,int*) ;
 int xadc_write_reg (struct xadc*,int ,int) ;

__attribute__((used)) static irqreturn_t xadc_axi_interrupt_handler(int irq, void *devid)
{
 struct iio_dev *indio_dev = devid;
 struct xadc *xadc = iio_priv(indio_dev);
 uint32_t status, mask;
 unsigned int events;

 xadc_read_reg(xadc, XADC_AXI_REG_IPISR, &status);
 xadc_read_reg(xadc, XADC_AXI_REG_IPIER, &mask);
 status &= mask;

 if (!status)
  return IRQ_NONE;

 if ((status & XADC_AXI_INT_EOS) && xadc->trigger)
  iio_trigger_poll(xadc->trigger);

 if (status & XADC_AXI_INT_ALARM_MASK) {






  events = (status & 0x000e) >> 1;
  events |= (status & 0x0001) << 3;
  events |= (status & 0x3c00) >> 6;
  xadc_handle_events(indio_dev, events);
 }

 xadc_write_reg(xadc, XADC_AXI_REG_IPISR, status);

 return IRQ_HANDLED;
}
