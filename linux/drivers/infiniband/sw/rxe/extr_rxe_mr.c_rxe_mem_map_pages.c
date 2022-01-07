
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct rxe_phys_buf {int size; int addr; } ;
struct rxe_mem {int max_buf; int page_shift; int length; int state; void* va; void* iova; struct rxe_map** map; } ;
struct rxe_map {struct rxe_phys_buf* buf; } ;
struct rxe_dev {int dummy; } ;


 int EINVAL ;
 int RXE_BUF_PER_MAP ;
 int RXE_MEM_STATE_VALID ;

int rxe_mem_map_pages(struct rxe_dev *rxe, struct rxe_mem *mem,
        u64 *page, int num_pages, u64 iova)
{
 int i;
 int num_buf;
 int err;
 struct rxe_map **map;
 struct rxe_phys_buf *buf;
 int page_size;

 if (num_pages > mem->max_buf) {
  err = -EINVAL;
  goto err1;
 }

 num_buf = 0;
 page_size = 1 << mem->page_shift;
 map = mem->map;
 buf = map[0]->buf;

 for (i = 0; i < num_pages; i++) {
  buf->addr = *page++;
  buf->size = page_size;
  buf++;
  num_buf++;

  if (num_buf == RXE_BUF_PER_MAP) {
   map++;
   buf = map[0]->buf;
   num_buf = 0;
  }
 }

 mem->iova = iova;
 mem->va = iova;
 mem->length = num_pages << mem->page_shift;
 mem->state = RXE_MEM_STATE_VALID;

 return 0;

err1:
 return err;
}
