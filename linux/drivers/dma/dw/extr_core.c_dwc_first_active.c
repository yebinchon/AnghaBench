
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct dw_dma_chan {TYPE_1__ active_list; } ;
struct dw_desc {int dummy; } ;


 struct dw_desc* to_dw_desc (int ) ;

__attribute__((used)) static struct dw_desc *dwc_first_active(struct dw_dma_chan *dwc)
{
 return to_dw_desc(dwc->active_list.next);
}
