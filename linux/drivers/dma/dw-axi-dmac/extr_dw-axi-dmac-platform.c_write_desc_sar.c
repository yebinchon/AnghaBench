
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sar; } ;
struct axi_dma_desc {TYPE_1__ lli; } ;
typedef int dma_addr_t ;


 int cpu_to_le64 (int ) ;

__attribute__((used)) static void write_desc_sar(struct axi_dma_desc *desc, dma_addr_t adr)
{
 desc->lli.sar = cpu_to_le64(adr);
}
