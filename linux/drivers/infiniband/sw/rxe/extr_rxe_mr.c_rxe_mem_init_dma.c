
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pd {int dummy; } ;
struct rxe_mem {int access; int type; int state; struct rxe_pd* pd; } ;


 int RXE_MEM_STATE_VALID ;
 int RXE_MEM_TYPE_DMA ;
 int rxe_mem_init (int,struct rxe_mem*) ;

int rxe_mem_init_dma(struct rxe_pd *pd,
       int access, struct rxe_mem *mem)
{
 rxe_mem_init(access, mem);

 mem->pd = pd;
 mem->access = access;
 mem->state = RXE_MEM_STATE_VALID;
 mem->type = RXE_MEM_TYPE_DMA;

 return 0;
}
