
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts221_hw {int dev; } ;


 int devm_iio_triggered_buffer_setup (int ,int ,int *,int ,int *) ;
 int hts221_buffer_handler_thread ;
 int hts221_buffer_ops ;
 int iio_priv_to_dev (struct hts221_hw*) ;

int hts221_allocate_buffers(struct hts221_hw *hw)
{
 return devm_iio_triggered_buffer_setup(hw->dev, iio_priv_to_dev(hw),
     ((void*)0), hts221_buffer_handler_thread,
     &hts221_buffer_ops);
}
