
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_dma_device {int axi_clk; int tx_clk; int txs_clk; int rx_clk; int rxs_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void xdma_disable_allclks(struct xilinx_dma_device *xdev)
{
 clk_disable_unprepare(xdev->rxs_clk);
 clk_disable_unprepare(xdev->rx_clk);
 clk_disable_unprepare(xdev->txs_clk);
 clk_disable_unprepare(xdev->tx_clk);
 clk_disable_unprepare(xdev->axi_clk);
}
