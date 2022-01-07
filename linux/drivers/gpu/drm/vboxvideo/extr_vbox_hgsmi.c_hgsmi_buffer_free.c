
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hgsmi_buffer_tail {int dummy; } ;
struct hgsmi_buffer_header {int data_size; } ;
struct gen_pool {int dummy; } ;


 int gen_pool_free (struct gen_pool*,unsigned long,size_t) ;

void hgsmi_buffer_free(struct gen_pool *guest_pool, void *buf)
{
 struct hgsmi_buffer_header *h =
  (struct hgsmi_buffer_header *)((u8 *)buf - sizeof(*h));
 size_t total_size = h->data_size + sizeof(*h) +
          sizeof(struct hgsmi_buffer_tail);

 gen_pool_free(guest_pool, (unsigned long)h, total_size);
}
