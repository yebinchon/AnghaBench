
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_madc_request {int result_pending; size_t method; scalar_t__ active; int raw; int rbuf; int channels; } ;
struct twl4030_madc_data {int lock; struct twl4030_madc_request* requests; int dev; int imr; int isr; } ;
struct twl4030_madc_conversion_method {int rbase; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TWL4030_MADC_NUM_METHODS ;
 int TWL4030_MODULE_MADC ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct twl4030_madc_conversion_method* twl4030_conversion_methods ;
 int twl4030_madc_disable_irq (struct twl4030_madc_data*,int) ;
 int twl4030_madc_read_channels (struct twl4030_madc_data*,int ,int ,int ,int ) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static irqreturn_t twl4030_madc_threaded_irq_handler(int irq, void *_madc)
{
 struct twl4030_madc_data *madc = _madc;
 const struct twl4030_madc_conversion_method *method;
 u8 isr_val, imr_val;
 int i, len, ret;
 struct twl4030_madc_request *r;

 mutex_lock(&madc->lock);
 ret = twl_i2c_read_u8(TWL4030_MODULE_MADC, &isr_val, madc->isr);
 if (ret) {
  dev_err(madc->dev, "unable to read isr register 0x%X\n",
   madc->isr);
  goto err_i2c;
 }
 ret = twl_i2c_read_u8(TWL4030_MODULE_MADC, &imr_val, madc->imr);
 if (ret) {
  dev_err(madc->dev, "unable to read imr register 0x%X\n",
   madc->imr);
  goto err_i2c;
 }
 isr_val &= ~imr_val;
 for (i = 0; i < TWL4030_MADC_NUM_METHODS; i++) {
  if (!(isr_val & (1 << i)))
   continue;
  ret = twl4030_madc_disable_irq(madc, i);
  if (ret < 0)
   dev_dbg(madc->dev, "Disable interrupt failed %d\n", i);
  madc->requests[i].result_pending = 1;
 }
 for (i = 0; i < TWL4030_MADC_NUM_METHODS; i++) {
  r = &madc->requests[i];

  if (!r->result_pending)
   continue;
  method = &twl4030_conversion_methods[r->method];

  len = twl4030_madc_read_channels(madc, method->rbase,
       r->channels, r->rbuf, r->raw);

  r->result_pending = 0;
  r->active = 0;
 }
 mutex_unlock(&madc->lock);

 return IRQ_HANDLED;

err_i2c:




 for (i = 0; i < TWL4030_MADC_NUM_METHODS; i++) {
  r = &madc->requests[i];
  if (r->active == 0)
   continue;
  method = &twl4030_conversion_methods[r->method];

  len = twl4030_madc_read_channels(madc, method->rbase,
       r->channels, r->rbuf, r->raw);

  r->result_pending = 0;
  r->active = 0;
 }
 mutex_unlock(&madc->lock);

 return IRQ_HANDLED;
}
