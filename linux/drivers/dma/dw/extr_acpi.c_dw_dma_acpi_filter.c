
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_slave {int p_master; int m_master; int dst_id; int src_id; int dma_dev; } ;
struct dma_chan {int dummy; } ;
struct acpi_dma_spec {int slave_id; int dev; } ;


 int dw_dma_filter (struct dma_chan*,struct dw_dma_slave*) ;

__attribute__((used)) static bool dw_dma_acpi_filter(struct dma_chan *chan, void *param)
{
 struct acpi_dma_spec *dma_spec = param;
 struct dw_dma_slave slave = {
  .dma_dev = dma_spec->dev,
  .src_id = dma_spec->slave_id,
  .dst_id = dma_spec->slave_id,
  .m_master = 0,
  .p_master = 1,
 };

 return dw_dma_filter(chan, &slave);
}
