
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdma_desc {int num_bd; int bd_phys; int bd; TYPE_2__* sdmac; } ;
struct sdma_buffer_descriptor {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sdma; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int ,int,int ,int ) ;

__attribute__((used)) static void sdma_free_bd(struct sdma_desc *desc)
{
 u32 bd_size = desc->num_bd * sizeof(struct sdma_buffer_descriptor);

 dma_free_coherent(desc->sdmac->sdma->dev, bd_size, desc->bd,
     desc->bd_phys);
}
