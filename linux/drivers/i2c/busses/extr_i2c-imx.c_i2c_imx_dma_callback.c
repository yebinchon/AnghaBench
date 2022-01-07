
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imx_i2c_struct {struct imx_i2c_dma* dma; } ;
struct imx_i2c_dma {int cmd_complete; int dma_data_dir; int dma_len; int dma_buf; TYPE_2__* chan_using; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int dev; } ;


 int complete (int *) ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void i2c_imx_dma_callback(void *arg)
{
 struct imx_i2c_struct *i2c_imx = (struct imx_i2c_struct *)arg;
 struct imx_i2c_dma *dma = i2c_imx->dma;

 dma_unmap_single(dma->chan_using->device->dev, dma->dma_buf,
   dma->dma_len, dma->dma_data_dir);
 complete(&dma->cmd_complete);
}
