
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_lldev {void* evch_state; void* trch_state; scalar_t__ evca; scalar_t__ trca; } ;


 void* HIDMA_CH_STATE (int ) ;
 scalar_t__ HIDMA_EVCA_CTRLSTS_REG ;
 scalar_t__ HIDMA_TRCA_CTRLSTS_REG ;
 scalar_t__ hidma_is_chan_enabled (void*) ;
 int readl (scalar_t__) ;

bool hidma_ll_isenabled(struct hidma_lldev *lldev)
{
 u32 val;

 val = readl(lldev->trca + HIDMA_TRCA_CTRLSTS_REG);
 lldev->trch_state = HIDMA_CH_STATE(val);
 val = readl(lldev->evca + HIDMA_EVCA_CTRLSTS_REG);
 lldev->evch_state = HIDMA_CH_STATE(val);


 if (hidma_is_chan_enabled(lldev->trch_state) &&
     hidma_is_chan_enabled(lldev->evch_state))
  return 1;

 return 0;
}
