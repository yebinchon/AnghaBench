
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ map; } ;
struct pvrdma_dev {TYPE_1__ driver_uar; } ;


 scalar_t__ PVRDMA_UAR_CQ_OFFSET ;
 int cpu_to_le32 (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pvrdma_write_uar_cq(struct pvrdma_dev *dev, u32 val)
{
 writel(cpu_to_le32(val), dev->driver_uar.map + PVRDMA_UAR_CQ_OFFSET);
}
