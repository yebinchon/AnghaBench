
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_des_dev {int dummy; } ;


 int omap_des_read (struct omap_des_dev*,int ) ;
 int omap_des_write (struct omap_des_dev*,int ,int ) ;

__attribute__((used)) static inline void omap_des_write_mask(struct omap_des_dev *dd, u32 offset,
     u32 value, u32 mask)
{
 u32 val;

 val = omap_des_read(dd, offset);
 val &= ~mask;
 val |= value;
 omap_des_write(dd, offset, val);
}
