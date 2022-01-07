
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_mbox_device {scalar_t__ mbox_base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline
void mbox_write_reg(struct omap_mbox_device *mdev, u32 val, size_t ofs)
{
 __raw_writel(val, mdev->mbox_base + ofs);
}
