
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_pd {int dummy; } ;
struct TYPE_2__ {int lkey; int rkey; } ;
struct rxe_mem {int max_buf; int type; int state; struct rxe_pd* pd; TYPE_1__ ibmr; } ;


 int RXE_MEM_STATE_FREE ;
 int RXE_MEM_TYPE_MR ;
 int rxe_mem_alloc (struct rxe_mem*,int) ;
 int rxe_mem_init (int ,struct rxe_mem*) ;

int rxe_mem_init_fast(struct rxe_pd *pd,
        int max_pages, struct rxe_mem *mem)
{
 int err;

 rxe_mem_init(0, mem);


 mem->ibmr.rkey = mem->ibmr.lkey;

 err = rxe_mem_alloc(mem, max_pages);
 if (err)
  goto err1;

 mem->pd = pd;
 mem->max_buf = max_pages;
 mem->state = RXE_MEM_STATE_FREE;
 mem->type = RXE_MEM_TYPE_MR;

 return 0;

err1:
 return err;
}
