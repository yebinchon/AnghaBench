
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct omap_aes_dev {scalar_t__ io_base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

inline u32 omap_aes_read(struct omap_aes_dev *dd, u32 offset)
{
 return __raw_readl(dd->io_base + offset);
}
