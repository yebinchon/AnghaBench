
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum irq_remap_cap { ____Placeholder_irq_remap_cap } irq_remap_cap ;
struct TYPE_2__ {int capability; } ;


 scalar_t__ disable_irq_post ;
 TYPE_1__* remap_ops ;

bool irq_remapping_cap(enum irq_remap_cap cap)
{
 if (!remap_ops || disable_irq_post)
  return 0;

 return (remap_ops->capability & (1 << cap));
}
