
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_device {scalar_t__ mbox_base; } ;


 unsigned int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline
unsigned int mbox_read_reg(struct omap_mbox_device *mdev, size_t ofs)
{
 return __raw_readl(mdev->mbox_base + ofs);
}
