
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_iu {size_t size; int direction; struct srp_iu* buf; int dma; } ;
struct srp_host {TYPE_1__* srp_dev; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int dev; } ;


 int ib_dma_map_single (int ,struct srp_iu*,size_t,int) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int kfree (struct srp_iu*) ;
 struct srp_iu* kmalloc (int,int ) ;
 struct srp_iu* kzalloc (size_t,int ) ;

__attribute__((used)) static struct srp_iu *srp_alloc_iu(struct srp_host *host, size_t size,
       gfp_t gfp_mask,
       enum dma_data_direction direction)
{
 struct srp_iu *iu;

 iu = kmalloc(sizeof *iu, gfp_mask);
 if (!iu)
  goto out;

 iu->buf = kzalloc(size, gfp_mask);
 if (!iu->buf)
  goto out_free_iu;

 iu->dma = ib_dma_map_single(host->srp_dev->dev, iu->buf, size,
        direction);
 if (ib_dma_mapping_error(host->srp_dev->dev, iu->dma))
  goto out_free_buf;

 iu->size = size;
 iu->direction = direction;

 return iu;

out_free_buf:
 kfree(iu->buf);
out_free_iu:
 kfree(iu);
out:
 return ((void*)0);
}
