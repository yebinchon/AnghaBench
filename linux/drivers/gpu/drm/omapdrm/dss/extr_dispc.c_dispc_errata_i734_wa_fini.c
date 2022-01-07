
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dispc_device {TYPE_2__* pdev; TYPE_1__* feat; } ;
struct TYPE_6__ {int paddr; int vaddr; int size; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int has_gamma_i734_bug; } ;


 int dma_free_wc (int *,int ,int ,int ) ;
 TYPE_3__ i734_buf ;

__attribute__((used)) static void dispc_errata_i734_wa_fini(struct dispc_device *dispc)
{
 if (!dispc->feat->has_gamma_i734_bug)
  return;

 dma_free_wc(&dispc->pdev->dev, i734_buf.size, i734_buf.vaddr,
      i734_buf.paddr);
}
