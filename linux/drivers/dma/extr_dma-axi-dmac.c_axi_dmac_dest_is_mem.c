
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dmac_chan {scalar_t__ dest_type; } ;


 scalar_t__ AXI_DMAC_BUS_TYPE_AXI_MM ;

__attribute__((used)) static int axi_dmac_dest_is_mem(struct axi_dmac_chan *chan)
{
 return chan->dest_type == AXI_DMAC_BUS_TYPE_AXI_MM;
}
