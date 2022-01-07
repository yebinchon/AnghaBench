
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9dmac_dev {int have_64bit_regs; } ;



__attribute__((used)) static inline bool __is_dmac64(const struct txx9dmac_dev *ddev)
{
 return ddev->have_64bit_regs;
}
