
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_cmdbuf_suballoc {scalar_t__ vaddr; int lock; int dev; scalar_t__ free_space; int free_event; int granule_map; } ;
struct etnaviv_cmdbuf {int suballoc_offset; scalar_t__ vaddr; int size; struct etnaviv_cmdbuf_suballoc* suballoc; } ;


 int ALIGN (int ,int) ;
 int ETIMEDOUT ;
 int SUBALLOC_GRANULE ;
 int SUBALLOC_GRANULES ;
 int bitmap_find_free_region (int ,int ,int) ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int order_base_2 (int) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int ) ;

int etnaviv_cmdbuf_init(struct etnaviv_cmdbuf_suballoc *suballoc,
   struct etnaviv_cmdbuf *cmdbuf, u32 size)
{
 int granule_offs, order, ret;

 cmdbuf->suballoc = suballoc;
 cmdbuf->size = size;

 order = order_base_2(ALIGN(size, SUBALLOC_GRANULE) / SUBALLOC_GRANULE);
retry:
 mutex_lock(&suballoc->lock);
 granule_offs = bitmap_find_free_region(suballoc->granule_map,
     SUBALLOC_GRANULES, order);
 if (granule_offs < 0) {
  suballoc->free_space = 0;
  mutex_unlock(&suballoc->lock);
  ret = wait_event_interruptible_timeout(suballoc->free_event,
             suballoc->free_space,
             msecs_to_jiffies(10 * 1000));
  if (!ret) {
   dev_err(suballoc->dev,
    "Timeout waiting for cmdbuf space\n");
   return -ETIMEDOUT;
  }
  goto retry;
 }
 mutex_unlock(&suballoc->lock);
 cmdbuf->suballoc_offset = granule_offs * SUBALLOC_GRANULE;
 cmdbuf->vaddr = suballoc->vaddr + cmdbuf->suballoc_offset;

 return 0;
}
