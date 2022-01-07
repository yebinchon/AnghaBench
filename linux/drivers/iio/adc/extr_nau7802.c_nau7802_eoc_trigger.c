
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau7802_state {scalar_t__ conversion_count; int value_ok; int client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ NAU7802_MIN_CONVERSIONS ;
 int NAU7802_PUCTRL_CR_BIT ;
 int NAU7802_REG_PUCTRL ;
 int complete (int *) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 struct nau7802_state* iio_priv (struct iio_dev*) ;
 scalar_t__ nau7802_read_conversion (struct nau7802_state*) ;

__attribute__((used)) static irqreturn_t nau7802_eoc_trigger(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct nau7802_state *st = iio_priv(indio_dev);
 int status;

 status = i2c_smbus_read_byte_data(st->client, NAU7802_REG_PUCTRL);
 if (status < 0)
  return IRQ_HANDLED;

 if (!(status & NAU7802_PUCTRL_CR_BIT))
  return IRQ_NONE;

 if (nau7802_read_conversion(st) < 0)
  return IRQ_HANDLED;






 if (st->conversion_count < NAU7802_MIN_CONVERSIONS)
  st->conversion_count++;
 if (st->conversion_count >= NAU7802_MIN_CONVERSIONS)
  complete(&st->value_ok);

 return IRQ_HANDLED;
}
