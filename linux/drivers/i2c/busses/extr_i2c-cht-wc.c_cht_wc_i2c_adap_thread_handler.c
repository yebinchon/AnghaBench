
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct cht_wc_i2c_adap {int irq_mask; int read_data; int io_error; int done; int client_irq; int wait; int adap_lock; TYPE_1__ adapter; int regmap; } ;
typedef int irqreturn_t ;


 int CHT_WC_EXTCHGRIRQ ;
 int CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK ;
 int CHT_WC_EXTCHGRIRQ_CLIENT_IRQ ;
 int CHT_WC_EXTCHGRIRQ_NACK_IRQ ;
 int CHT_WC_I2C_RDDATA ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int *,char*) ;
 int generic_handle_irq (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t cht_wc_i2c_adap_thread_handler(int id, void *data)
{
 struct cht_wc_i2c_adap *adap = data;
 int ret, reg;

 mutex_lock(&adap->adap_lock);


 ret = regmap_read(adap->regmap, CHT_WC_EXTCHGRIRQ, &reg);
 if (ret) {
  dev_err(&adap->adapter.dev, "Error reading extchgrirq reg\n");
  mutex_unlock(&adap->adap_lock);
  return IRQ_NONE;
 }

 reg &= ~adap->irq_mask;


 ret = regmap_read(adap->regmap, CHT_WC_I2C_RDDATA, &adap->read_data);
 if (ret)
  adap->io_error = 1;





 ret = regmap_write(adap->regmap, CHT_WC_EXTCHGRIRQ, reg);
 if (ret)
  dev_err(&adap->adapter.dev, "Error writing extchgrirq reg\n");

 if (reg & CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK) {
  adap->io_error |= !!(reg & CHT_WC_EXTCHGRIRQ_NACK_IRQ);
  adap->done = 1;
 }

 mutex_unlock(&adap->adap_lock);

 if (reg & CHT_WC_EXTCHGRIRQ_ADAP_IRQMASK)
  wake_up(&adap->wait);







 if (reg & CHT_WC_EXTCHGRIRQ_CLIENT_IRQ) {




  local_irq_disable();
  generic_handle_irq(adap->client_irq);
  local_irq_enable();
 }

 return IRQ_HANDLED;
}
