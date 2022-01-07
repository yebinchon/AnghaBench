
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9dmac_dev {int dummy; } ;


 int MCR ;
 int dma_writel (struct txx9dmac_dev*,int ,int ) ;

__attribute__((used)) static void txx9dmac_off(struct txx9dmac_dev *ddev)
{
 dma_writel(ddev, MCR, 0);
}
