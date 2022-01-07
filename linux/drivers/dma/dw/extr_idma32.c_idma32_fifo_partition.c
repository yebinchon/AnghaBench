
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dw_dma {int dummy; } ;


 int FIFO_PARTITION0 ;
 int FIFO_PARTITION1 ;
 int IDMA32C_FP_PSIZE_CH0 (int) ;
 int IDMA32C_FP_PSIZE_CH1 (int) ;
 int IDMA32C_FP_UPDATE ;
 int idma32_writeq (struct dw_dma*,int ,int) ;

__attribute__((used)) static void idma32_fifo_partition(struct dw_dma *dw)
{
 u64 value = IDMA32C_FP_PSIZE_CH0(64) | IDMA32C_FP_PSIZE_CH1(64) |
      IDMA32C_FP_UPDATE;
 u64 fifo_partition = 0;


 fifo_partition |= value << 0;


 fifo_partition |= value << 32;


 idma32_writeq(dw, FIFO_PARTITION1, fifo_partition);
 idma32_writeq(dw, FIFO_PARTITION0, fifo_partition);
}
