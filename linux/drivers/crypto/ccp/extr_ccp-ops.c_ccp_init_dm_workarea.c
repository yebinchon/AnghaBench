
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int length; int dir; int address; } ;
struct ccp_dm_workarea {unsigned int length; TYPE_2__ dma; int dev; scalar_t__ address; int dma_pool; } ;
struct ccp_cmd_queue {int dma_pool; TYPE_1__* ccp; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {int dev; } ;


 unsigned int CCP_DMAPOOL_MAX_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_map_single (int ,scalar_t__,unsigned int,int) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 scalar_t__ dma_pool_zalloc (int ,int ,int *) ;
 scalar_t__ kzalloc (unsigned int,int ) ;
 int memset (struct ccp_dm_workarea*,int ,int) ;

__attribute__((used)) static int ccp_init_dm_workarea(struct ccp_dm_workarea *wa,
    struct ccp_cmd_queue *cmd_q,
    unsigned int len,
    enum dma_data_direction dir)
{
 memset(wa, 0, sizeof(*wa));

 if (!len)
  return 0;

 wa->dev = cmd_q->ccp->dev;
 wa->length = len;

 if (len <= CCP_DMAPOOL_MAX_SIZE) {
  wa->dma_pool = cmd_q->dma_pool;

  wa->address = dma_pool_zalloc(wa->dma_pool, GFP_KERNEL,
          &wa->dma.address);
  if (!wa->address)
   return -ENOMEM;

  wa->dma.length = CCP_DMAPOOL_MAX_SIZE;

 } else {
  wa->address = kzalloc(len, GFP_KERNEL);
  if (!wa->address)
   return -ENOMEM;

  wa->dma.address = dma_map_single(wa->dev, wa->address, len,
       dir);
  if (dma_mapping_error(wa->dev, wa->dma.address))
   return -ENOMEM;

  wa->dma.length = len;
 }
 wa->dma.dir = dir;

 return 0;
}
