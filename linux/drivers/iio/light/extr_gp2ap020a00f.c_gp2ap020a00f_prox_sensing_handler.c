
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct gp2ap020a00f_data {int regmap; } ;
typedef int irqreturn_t ;


 int GP2AP020A00F_OP_REG ;
 unsigned int GP2AP020A00F_PROX_DETECT ;
 int GP2AP020A00F_SCAN_MODE_PROXIMITY ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_ROC ;
 int IIO_PROXIMITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 scalar_t__ gp2ap020a00f_prox_detect_enabled (struct gp2ap020a00f_data*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct gp2ap020a00f_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t gp2ap020a00f_prox_sensing_handler(int irq, void *data)
{
 struct iio_dev *indio_dev = data;
 struct gp2ap020a00f_data *priv = iio_priv(indio_dev);
 unsigned int op_reg_val;
 int ret;


 ret = regmap_read(priv->regmap, GP2AP020A00F_OP_REG, &op_reg_val);
 if (ret < 0)
  return IRQ_HANDLED;

 if (gp2ap020a00f_prox_detect_enabled(priv)) {
  if (op_reg_val & GP2AP020A00F_PROX_DETECT) {
   iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(
        IIO_PROXIMITY,
        GP2AP020A00F_SCAN_MODE_PROXIMITY,
        IIO_EV_TYPE_ROC,
        IIO_EV_DIR_RISING),
          iio_get_time_ns(indio_dev));
  } else {
   iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(
        IIO_PROXIMITY,
        GP2AP020A00F_SCAN_MODE_PROXIMITY,
        IIO_EV_TYPE_ROC,
        IIO_EV_DIR_FALLING),
          iio_get_time_ns(indio_dev));
  }
 }

 return IRQ_HANDLED;
}
