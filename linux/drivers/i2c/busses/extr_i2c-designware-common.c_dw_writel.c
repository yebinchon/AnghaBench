
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dw_i2c_dev {int flags; scalar_t__ base; } ;


 int ACCESS_16BIT ;
 int ACCESS_SWAP ;
 int swab32 (int) ;
 int writel_relaxed (int,scalar_t__) ;
 int writew_relaxed (int ,scalar_t__) ;

void dw_writel(struct dw_i2c_dev *dev, u32 b, int offset)
{
 if (dev->flags & ACCESS_SWAP)
  b = swab32(b);

 if (dev->flags & ACCESS_16BIT) {
  writew_relaxed((u16)b, dev->base + offset);
  writew_relaxed((u16)(b >> 16), dev->base + offset + 2);
 } else {
  writel_relaxed(b, dev->base + offset);
 }
}
