
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_phys_buf {int size; int addr; } ;
struct rxe_mem {size_t nbuf; size_t num_buf; struct rxe_map** map; } ;
struct rxe_map {struct rxe_phys_buf* buf; } ;
struct ib_mr {int page_size; } ;


 int ENOMEM ;
 size_t RXE_BUF_PER_MAP ;
 struct rxe_mem* to_rmr (struct ib_mr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rxe_set_page(struct ib_mr *ibmr, u64 addr)
{
 struct rxe_mem *mr = to_rmr(ibmr);
 struct rxe_map *map;
 struct rxe_phys_buf *buf;

 if (unlikely(mr->nbuf == mr->num_buf))
  return -ENOMEM;

 map = mr->map[mr->nbuf / RXE_BUF_PER_MAP];
 buf = &map->buf[mr->nbuf % RXE_BUF_PER_MAP];

 buf->addr = addr;
 buf->size = ibmr->page_size;
 mr->nbuf++;

 return 0;
}
