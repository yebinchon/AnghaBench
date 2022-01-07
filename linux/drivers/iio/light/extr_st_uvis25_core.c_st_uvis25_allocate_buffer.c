
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_uvis25_hw {int regmap; } ;
struct iio_dev {int dummy; } ;


 int devm_iio_triggered_buffer_setup (int ,struct iio_dev*,int *,int ,int *) ;
 struct st_uvis25_hw* iio_priv (struct iio_dev*) ;
 int regmap_get_device (int ) ;
 int st_uvis25_buffer_handler_thread ;
 int st_uvis25_buffer_ops ;

__attribute__((used)) static int st_uvis25_allocate_buffer(struct iio_dev *iio_dev)
{
 struct st_uvis25_hw *hw = iio_priv(iio_dev);

 return devm_iio_triggered_buffer_setup(regmap_get_device(hw->regmap),
            iio_dev, ((void*)0),
            st_uvis25_buffer_handler_thread,
            &st_uvis25_buffer_ops);
}
