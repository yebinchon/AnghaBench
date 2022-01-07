
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int SYNC_FOR_CPU ;
 int bounce_sync_single (struct device*,int ,size_t,int,int ) ;

__attribute__((used)) static void
bounce_sync_single_for_cpu(struct device *dev, dma_addr_t addr,
      size_t size, enum dma_data_direction dir)
{
 bounce_sync_single(dev, addr, size, dir, SYNC_FOR_CPU);
}
