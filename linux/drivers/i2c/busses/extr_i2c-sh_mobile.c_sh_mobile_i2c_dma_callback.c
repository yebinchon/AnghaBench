
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {int stop_after_dma; TYPE_1__* msg; int pos; } ;
struct TYPE_2__ {int len; } ;


 int ICIC ;
 int ICIC_RDMAE ;
 int ICIC_TDMAE ;
 int iic_set_clr (struct sh_mobile_i2c_data*,int ,int ,int) ;
 int sh_mobile_i2c_dma_unmap (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static void sh_mobile_i2c_dma_callback(void *data)
{
 struct sh_mobile_i2c_data *pd = data;

 sh_mobile_i2c_dma_unmap(pd);
 pd->pos = pd->msg->len;
 pd->stop_after_dma = 1;

 iic_set_clr(pd, ICIC, 0, ICIC_TDMAE | ICIC_RDMAE);
}
