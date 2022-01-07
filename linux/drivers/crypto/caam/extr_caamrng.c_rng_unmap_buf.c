
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct buf_data {scalar_t__ addr; } ;


 int DMA_FROM_DEVICE ;
 int RN_BUF_SIZE ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;

__attribute__((used)) static inline void rng_unmap_buf(struct device *jrdev, struct buf_data *bd)
{
 if (bd->addr)
  dma_unmap_single(jrdev, bd->addr, RN_BUF_SIZE,
     DMA_FROM_DEVICE);
}
