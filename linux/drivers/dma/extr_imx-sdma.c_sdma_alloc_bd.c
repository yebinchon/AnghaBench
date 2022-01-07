
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdma_desc {int num_bd; int bd; int bd_phys; TYPE_2__* sdmac; } ;
struct sdma_buffer_descriptor {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sdma; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_NOWAIT ;
 int dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int sdma_alloc_bd(struct sdma_desc *desc)
{
 u32 bd_size = desc->num_bd * sizeof(struct sdma_buffer_descriptor);
 int ret = 0;

 desc->bd = dma_alloc_coherent(desc->sdmac->sdma->dev, bd_size,
           &desc->bd_phys, GFP_NOWAIT);
 if (!desc->bd) {
  ret = -ENOMEM;
  goto out;
 }
out:
 return ret;
}
