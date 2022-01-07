
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_i2c_dev {int cmd_complete; } ;


 int complete (int *) ;
 int mxs_i2c_dma_finish (struct mxs_i2c_dev*) ;

__attribute__((used)) static void mxs_i2c_dma_irq_callback(void *param)
{
 struct mxs_i2c_dev *i2c = param;

 complete(&i2c->cmd_complete);
 mxs_i2c_dma_finish(i2c);
}
