
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;


 int of_dma_configure (struct device*,int ,int) ;

__attribute__((used)) static int host1x_dma_configure(struct device *dev)
{
 return of_dma_configure(dev, dev->of_node, 1);
}
