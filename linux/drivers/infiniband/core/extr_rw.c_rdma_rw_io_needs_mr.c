
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 scalar_t__ rdma_protocol_iwarp (struct ib_device*,int ) ;
 int rdma_rw_force_mr ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline bool rdma_rw_io_needs_mr(struct ib_device *dev, u8 port_num,
  enum dma_data_direction dir, int dma_nents)
{
 if (rdma_protocol_iwarp(dev, port_num) && dir == DMA_FROM_DEVICE)
  return 1;
 if (unlikely(rdma_rw_force_mr))
  return 1;
 return 0;
}
