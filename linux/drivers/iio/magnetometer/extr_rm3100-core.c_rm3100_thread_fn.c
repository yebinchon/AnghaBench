
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm3100_data {int regmap; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RM3100_REG_POLL ;
 struct rm3100_data* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t rm3100_thread_fn(int irq, void *d)
{
 struct iio_dev *indio_dev = d;
 struct rm3100_data *data = iio_priv(indio_dev);





 regmap_write(data->regmap, RM3100_REG_POLL, 0);

 return IRQ_HANDLED;
}
