
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv {int fence_excl; int fence; int seq; int lock; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int __seqcount_init (int *,int ,int *) ;
 int reservation_seqcount_class ;
 int reservation_seqcount_string ;
 int reservation_ww_class ;
 int ww_mutex_init (int *,int *) ;

void dma_resv_init(struct dma_resv *obj)
{
 ww_mutex_init(&obj->lock, &reservation_ww_class);

 __seqcount_init(&obj->seq, reservation_seqcount_string,
   &reservation_seqcount_class);
 RCU_INIT_POINTER(obj->fence, ((void*)0));
 RCU_INIT_POINTER(obj->fence_excl, ((void*)0));
}
