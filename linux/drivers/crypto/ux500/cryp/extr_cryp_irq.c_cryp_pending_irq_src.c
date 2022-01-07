
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cryp_device_data {TYPE_1__* base; } ;
struct TYPE_2__ {int mis; } ;


 int readl_relaxed (int *) ;

bool cryp_pending_irq_src(struct cryp_device_data *device_data, u32 irq_src)
{
 return (readl_relaxed(&device_data->base->mis) & irq_src) > 0;
}
