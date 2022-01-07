
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_aes_dev {int dummy; } ;


 int SSS_HASH_FIFO_MODE_DMA ;
 int SSS_REG_HASH_CTRL_FIFO ;
 int s5p_hash_write (struct s5p_aes_dev*,int ,int ) ;

__attribute__((used)) static void s5p_hash_dma_enable(struct s5p_aes_dev *dev)
{
 s5p_hash_write(dev, SSS_REG_HASH_CTRL_FIFO, SSS_HASH_FIFO_MODE_DMA);
}
