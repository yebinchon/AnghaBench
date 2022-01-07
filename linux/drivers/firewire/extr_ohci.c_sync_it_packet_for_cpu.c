
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct descriptor {int control; int req_count; int data_address; } ;
struct context {int current_bus; TYPE_2__* ohci; } ;
typedef int __le16 ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ card; } ;


 int DESCRIPTOR_BRANCH_ALWAYS ;
 int DMA_TO_DEVICE ;
 int PAGE_MASK ;
 int cpu_to_le16 (int ) ;
 int dma_sync_single_range_for_cpu (int ,int,int,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void sync_it_packet_for_cpu(struct context *context,
       struct descriptor *pd)
{
 __le16 control;
 u32 buffer_dma;


 if (pd->control & cpu_to_le16(DESCRIPTOR_BRANCH_ALWAYS))
  return;


 pd += 2;






 if ((le32_to_cpu(pd->data_address) & PAGE_MASK) ==
     (context->current_bus & PAGE_MASK)) {
  if (pd->control & cpu_to_le16(DESCRIPTOR_BRANCH_ALWAYS))
   return;
  pd++;
 }

 do {
  buffer_dma = le32_to_cpu(pd->data_address);
  dma_sync_single_range_for_cpu(context->ohci->card.device,
           buffer_dma & PAGE_MASK,
           buffer_dma & ~PAGE_MASK,
           le16_to_cpu(pd->req_count),
           DMA_TO_DEVICE);
  control = pd->control;
  pd++;
 } while (!(control & cpu_to_le16(DESCRIPTOR_BRANCH_ALWAYS)));
}
