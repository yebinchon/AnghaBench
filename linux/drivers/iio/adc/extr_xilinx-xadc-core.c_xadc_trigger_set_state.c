
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xadc {int mutex; int lock; struct iio_trigger* trigger; struct iio_trigger* convst_trigger; } ;
struct iio_trigger {int dummy; } ;


 int EBUSY ;
 unsigned int XADC_AXI_INT_EOS ;
 int XADC_AXI_REG_IPIER ;
 int XADC_AXI_REG_IPISR ;
 unsigned int XADC_CONF0_EC ;
 int XADC_REG_CONF1 ;
 int _xadc_update_adc_reg (struct xadc*,int ,unsigned int,unsigned int) ;
 struct xadc* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xadc_read_reg (struct xadc*,int ,unsigned int*) ;
 int xadc_write_reg (struct xadc*,int ,unsigned int) ;

__attribute__((used)) static int xadc_trigger_set_state(struct iio_trigger *trigger, bool state)
{
 struct xadc *xadc = iio_trigger_get_drvdata(trigger);
 unsigned long flags;
 unsigned int convst;
 unsigned int val;
 int ret = 0;

 mutex_lock(&xadc->mutex);

 if (state) {

  if (xadc->trigger != ((void*)0)) {
   ret = -EBUSY;
   goto err_out;
  } else {
   xadc->trigger = trigger;
   if (trigger == xadc->convst_trigger)
    convst = XADC_CONF0_EC;
   else
    convst = 0;
  }
  ret = _xadc_update_adc_reg(xadc, XADC_REG_CONF1, XADC_CONF0_EC,
     convst);
  if (ret)
   goto err_out;
 } else {
  xadc->trigger = ((void*)0);
 }

 spin_lock_irqsave(&xadc->lock, flags);
 xadc_read_reg(xadc, XADC_AXI_REG_IPIER, &val);
 xadc_write_reg(xadc, XADC_AXI_REG_IPISR, val & XADC_AXI_INT_EOS);
 if (state)
  val |= XADC_AXI_INT_EOS;
 else
  val &= ~XADC_AXI_INT_EOS;
 xadc_write_reg(xadc, XADC_AXI_REG_IPIER, val);
 spin_unlock_irqrestore(&xadc->lock, flags);

err_out:
 mutex_unlock(&xadc->mutex);

 return ret;
}
