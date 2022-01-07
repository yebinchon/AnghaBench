
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct d40_log_lli_bidir {int * src; int * dst; } ;
struct d40_log_lli {int dummy; } ;
struct d40_lcla_pool {int dma_addr; struct d40_log_lli* base; } ;
struct d40_desc {int lli_current; int lli_len; int cyclic; struct d40_log_lli_bidir lli_log; } ;
struct TYPE_6__ {scalar_t__ dir; } ;
struct d40_chan {TYPE_4__* base; int lcpa; TYPE_3__* phy_chan; TYPE_2__ dma_cfg; } ;
struct TYPE_8__ {int dev; TYPE_1__* plat_data; struct d40_lcla_pool lcla_pool; } ;
struct TYPE_7__ {int num; scalar_t__ use_soft_lli; } ;
struct TYPE_5__ {int use_esram_lcla; } ;


 scalar_t__ DMA_DEV_TO_MEM ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 unsigned int LLI_TERM_INT ;
 int d40_lcla_alloc_one (struct d40_chan*,struct d40_desc*) ;
 int d40_log_lli_lcla_write (struct d40_log_lli*,int *,int *,int,unsigned int) ;
 int d40_log_lli_lcpa_write (int ,int *,int *,int,unsigned int) ;
 int dma_sync_single_range_for_device (int ,int ,unsigned int,int,int ) ;

__attribute__((used)) static void d40_log_lli_to_lcxa(struct d40_chan *chan, struct d40_desc *desc)
{
 struct d40_lcla_pool *pool = &chan->base->lcla_pool;
 struct d40_log_lli_bidir *lli = &desc->lli_log;
 int lli_current = desc->lli_current;
 int lli_len = desc->lli_len;
 bool cyclic = desc->cyclic;
 int curr_lcla = -EINVAL;
 int first_lcla = 0;
 bool use_esram_lcla = chan->base->plat_data->use_esram_lcla;
 bool linkback;





 linkback = cyclic && lli_current == 0;





 if (linkback || (lli_len - lli_current > 1)) {






  if (!(chan->phy_chan->use_soft_lli &&
   chan->dma_cfg.dir == DMA_DEV_TO_MEM))
   curr_lcla = d40_lcla_alloc_one(chan, desc);

  first_lcla = curr_lcla;
 }







 if (!linkback || curr_lcla == -EINVAL) {
  unsigned int flags = 0;

  if (curr_lcla == -EINVAL)
   flags |= LLI_TERM_INT;

  d40_log_lli_lcpa_write(chan->lcpa,
           &lli->dst[lli_current],
           &lli->src[lli_current],
           curr_lcla,
           flags);
  lli_current++;
 }

 if (curr_lcla < 0)
  goto set_current;

 for (; lli_current < lli_len; lli_current++) {
  unsigned int lcla_offset = chan->phy_chan->num * 1024 +
        8 * curr_lcla * 2;
  struct d40_log_lli *lcla = pool->base + lcla_offset;
  unsigned int flags = 0;
  int next_lcla;

  if (lli_current + 1 < lli_len)
   next_lcla = d40_lcla_alloc_one(chan, desc);
  else
   next_lcla = linkback ? first_lcla : -EINVAL;

  if (cyclic || next_lcla == -EINVAL)
   flags |= LLI_TERM_INT;

  if (linkback && curr_lcla == first_lcla) {

   d40_log_lli_lcpa_write(chan->lcpa,
            &lli->dst[lli_current],
            &lli->src[lli_current],
            next_lcla, flags);
  }





  d40_log_lli_lcla_write(lcla,
           &lli->dst[lli_current],
           &lli->src[lli_current],
           next_lcla, flags);





  if (!use_esram_lcla) {
   dma_sync_single_range_for_device(chan->base->dev,
      pool->dma_addr, lcla_offset,
      2 * sizeof(struct d40_log_lli),
      DMA_TO_DEVICE);
  }
  curr_lcla = next_lcla;

  if (curr_lcla == -EINVAL || curr_lcla == first_lcla) {
   lli_current++;
   break;
  }
 }
 set_current:
 desc->lli_current = lli_current;
}
