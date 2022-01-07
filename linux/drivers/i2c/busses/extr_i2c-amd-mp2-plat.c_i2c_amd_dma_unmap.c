
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct amd_i2c_common {TYPE_3__* msg; int dma_buf; int dma_addr; TYPE_2__* mp2_dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {int flags; int len; } ;
struct TYPE_5__ {TYPE_1__* pci_dev; } ;
struct TYPE_4__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int I2C_M_RD ;
 int dma_unmap_single (struct device*,int ,int ,int) ;
 int i2c_put_dma_safe_msg_buf (int ,TYPE_3__*,int) ;

__attribute__((used)) static void i2c_amd_dma_unmap(struct amd_i2c_common *i2c_common)
{
 struct device *dev_pci = &i2c_common->mp2_dev->pci_dev->dev;
 enum dma_data_direction dma_direction =
   i2c_common->msg->flags & I2C_M_RD ?
   DMA_FROM_DEVICE : DMA_TO_DEVICE;

 dma_unmap_single(dev_pci, i2c_common->dma_addr,
    i2c_common->msg->len, dma_direction);

 i2c_put_dma_safe_msg_buf(i2c_common->dma_buf, i2c_common->msg, 1);
}
