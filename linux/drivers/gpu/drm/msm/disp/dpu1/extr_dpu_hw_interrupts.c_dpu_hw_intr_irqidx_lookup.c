
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef enum dpu_intr_type { ____Placeholder_dpu_intr_type } dpu_intr_type ;
struct TYPE_3__ {int intr_type; scalar_t__ instance_idx; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* dpu_irq_map ;
 int pr_debug (char*,int,scalar_t__) ;

__attribute__((used)) static int dpu_hw_intr_irqidx_lookup(enum dpu_intr_type intr_type,
  u32 instance_idx)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dpu_irq_map); i++) {
  if (intr_type == dpu_irq_map[i].intr_type &&
   instance_idx == dpu_irq_map[i].instance_idx)
   return i;
 }

 pr_debug("IRQ lookup fail!! intr_type=%d, instance_idx=%d\n",
   intr_type, instance_idx);
 return -EINVAL;
}
