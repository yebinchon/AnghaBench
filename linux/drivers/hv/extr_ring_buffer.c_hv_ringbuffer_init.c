
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct hv_ring_buffer_info {int ring_size; int ring_datasize; int ring_lock; scalar_t__ priv_read_index; int ring_size_div10_reciprocal; struct hv_ring_buffer* ring_buffer; } ;
struct TYPE_2__ {int value; } ;
struct hv_ring_buffer {TYPE_1__ feature_bits; scalar_t__ write_index; scalar_t__ read_index; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int VM_MAP ;
 struct page** kcalloc (int,int,int ) ;
 int kfree (struct page**) ;
 int reciprocal_value (int) ;
 int spin_lock_init (int *) ;
 scalar_t__ vmap (struct page**,int,int ,int ) ;

int hv_ringbuffer_init(struct hv_ring_buffer_info *ring_info,
         struct page *pages, u32 page_cnt)
{
 int i;
 struct page **pages_wraparound;

 BUILD_BUG_ON((sizeof(struct hv_ring_buffer) != PAGE_SIZE));





 pages_wraparound = kcalloc(page_cnt * 2 - 1, sizeof(struct page *),
       GFP_KERNEL);
 if (!pages_wraparound)
  return -ENOMEM;

 pages_wraparound[0] = pages;
 for (i = 0; i < 2 * (page_cnt - 1); i++)
  pages_wraparound[i + 1] = &pages[i % (page_cnt - 1) + 1];

 ring_info->ring_buffer = (struct hv_ring_buffer *)
  vmap(pages_wraparound, page_cnt * 2 - 1, VM_MAP, PAGE_KERNEL);

 kfree(pages_wraparound);


 if (!ring_info->ring_buffer)
  return -ENOMEM;

 ring_info->ring_buffer->read_index =
  ring_info->ring_buffer->write_index = 0;


 ring_info->ring_buffer->feature_bits.value = 1;

 ring_info->ring_size = page_cnt << PAGE_SHIFT;
 ring_info->ring_size_div10_reciprocal =
  reciprocal_value(ring_info->ring_size / 10);
 ring_info->ring_datasize = ring_info->ring_size -
  sizeof(struct hv_ring_buffer);
 ring_info->priv_read_index = 0;

 spin_lock_init(&ring_info->ring_lock);

 return 0;
}
