
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_dma_chn {int * cur_desc; } ;


 int sprd_dma_clear_int (struct sprd_dma_chn*) ;
 int sprd_dma_stop_and_disable (struct sprd_dma_chn*) ;
 int sprd_dma_unset_uid (struct sprd_dma_chn*) ;

__attribute__((used)) static void sprd_dma_stop(struct sprd_dma_chn *schan)
{
 sprd_dma_stop_and_disable(schan);
 sprd_dma_unset_uid(schan);
 sprd_dma_clear_int(schan);
 schan->cur_desc = ((void*)0);
}
