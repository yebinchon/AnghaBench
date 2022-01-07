
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sham_dev {int dummy; } ;


 int omap_sham_read (struct omap_sham_dev*,int ) ;
 int omap_sham_write (struct omap_sham_dev*,int ,int ) ;

__attribute__((used)) static inline void omap_sham_write_mask(struct omap_sham_dev *dd, u32 address,
     u32 value, u32 mask)
{
 u32 val;

 val = omap_sham_read(dd, address);
 val &= ~mask;
 val |= value;
 omap_sham_write(dd, address, val);
}
