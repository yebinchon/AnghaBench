
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_dma_chan {int status; } ;


 int ATC_IS_CYCLIC ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int atc_chan_is_cyclic(struct at_dma_chan *atchan)
{
 return test_bit(ATC_IS_CYCLIC, &atchan->status);
}
