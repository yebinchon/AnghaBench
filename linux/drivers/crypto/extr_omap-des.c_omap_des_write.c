
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct omap_des_dev {scalar_t__ io_base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void omap_des_write(struct omap_des_dev *dd, u32 offset,
  u32 value)
{
 __raw_writel(value, dd->io_base + offset);
}
