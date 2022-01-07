
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u64 ;
struct rxe_mem {size_t iova; size_t offset; size_t page_shift; size_t page_mask; size_t map_mask; size_t map_shift; TYPE_2__** map; } ;
struct TYPE_4__ {TYPE_1__* buf; } ;
struct TYPE_3__ {size_t size; } ;


 int RXE_BUF_PER_MAP ;
 scalar_t__ likely (size_t) ;

__attribute__((used)) static void lookup_iova(
 struct rxe_mem *mem,
 u64 iova,
 int *m_out,
 int *n_out,
 size_t *offset_out)
{
 size_t offset = iova - mem->iova + mem->offset;
 int map_index;
 int buf_index;
 u64 length;

 if (likely(mem->page_shift)) {
  *offset_out = offset & mem->page_mask;
  offset >>= mem->page_shift;
  *n_out = offset & mem->map_mask;
  *m_out = offset >> mem->map_shift;
 } else {
  map_index = 0;
  buf_index = 0;

  length = mem->map[map_index]->buf[buf_index].size;

  while (offset >= length) {
   offset -= length;
   buf_index++;

   if (buf_index == RXE_BUF_PER_MAP) {
    map_index++;
    buf_index = 0;
   }
   length = mem->map[map_index]->buf[buf_index].size;
  }

  *m_out = map_index;
  *n_out = buf_index;
  *offset_out = offset;
 }
}
